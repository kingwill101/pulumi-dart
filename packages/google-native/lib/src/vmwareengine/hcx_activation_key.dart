import 'package:pulumi/pulumi.dart' as pulumi;
import 'hcx_activation_key_args.dart';

/// Creates a new HCX activation key in a given private cloud.
/// Auto-naming is currently not supported for this resource.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class HcxActivationKey extends pulumi.CustomResource {
  /// HCX activation key.
  late final pulumi.Output<String> activationKey;
  /// Creation time of HCX activation key.
  late final pulumi.Output<String> createTime;
  /// Required. The user-provided identifier of the `HcxActivationKey` to be created. This identifier must be unique among `HcxActivationKey` resources within the parent and becomes the final token in the name URI. The identifier must meet the following requirements: * Only contains 1-63 alphanumeric characters and hyphens * Begins with an alphabetical character * Ends with a non-hyphen character * Not formatted as a UUID * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034) (section 3.5)
  late final pulumi.Output<String> hcxActivationKeyId;
  late final pulumi.Output<String> location;
  /// The resource name of this HcxActivationKey. Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names. For example: `projects/my-project/locations/us-central1/privateClouds/my-cloud/hcxActivationKeys/my-key`
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> privateCloudId;
  late final pulumi.Output<String> project;
  /// A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final pulumi.Output<String?> requestId;
  /// State of HCX activation key.
  late final pulumi.Output<String> state;
  /// System-generated unique identifier for the resource.
  late final pulumi.Output<String> uid;

  /// Creates a new [HcxActivationKey].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HcxActivationKey]. {@macro pulumi_vmwareengine_v1_hcx_activation_key_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HcxActivationKey(
    String name, {
    HcxActivationKeyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:vmwareengine/v1:HcxActivationKey',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.activationKey = registerOutput<String>('activationKey');
    this.createTime = registerOutput<String>('createTime');
    this.hcxActivationKeyId = registerOutput<String>('hcxActivationKeyId');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateCloudId = registerOutput<String>('privateCloudId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
  }
}
