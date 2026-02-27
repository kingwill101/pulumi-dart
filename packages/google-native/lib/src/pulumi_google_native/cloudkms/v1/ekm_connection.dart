import 'package:pulumi/pulumi.dart' as pulumi;
import 'ekm_connection_args.dart';
import 'service_resolver_response.dart';

/// Creates a new EkmConnection in a given Project and Location.
/// Note - this resource's API doesn't support deletion. When deleted, the resource will persist
/// on Google Cloud even though it will be deleted from Pulumi state.
class EkmConnection extends pulumi.CustomResource {
  /// The time at which the EkmConnection was created.
  late final pulumi.Output<String> createTime;

  /// Optional. Identifies the EKM Crypto Space that this EkmConnection maps to. Note: This field is required if KeyManagementMode is CLOUD_KMS.
  late final pulumi.Output<String> cryptoSpacePath;

  /// Required. It must be unique within a location and match the regular expression `[a-zA-Z0-9_-]{1,63}`.
  late final pulumi.Output<String> ekmConnectionId;

  /// Optional. Etag of the currently stored EkmConnection.
  late final pulumi.Output<String> etag;

  /// Optional. Describes who can perform control plane operations on the EKM. If unset, this defaults to MANUAL.
  late final pulumi.Output<String> keyManagementMode;
  late final pulumi.Output<String> location;

  /// The resource name for the EkmConnection in the format `projects/*/locations/*/ekmConnections/*`.
  late final pulumi.Output<String> name;
  late final pulumi.Output<String> project;

  /// A list of ServiceResolvers where the EKM can be reached. There should be one ServiceResolver per EKM replica. Currently, only a single ServiceResolver is supported.
  late final pulumi.Output<List<ServiceResolverResponse>> serviceResolvers;

  EkmConnection(
    String name, {
    EkmConnectionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'google-native:cloudkms/v1:EkmConnection',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.cryptoSpacePath = registerOutput<String>('cryptoSpacePath');
    this.ekmConnectionId = registerOutput<String>('ekmConnectionId');
    this.etag = registerOutput<String>('etag');
    this.keyManagementMode = registerOutput<String>('keyManagementMode');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.serviceResolvers =
        registerOutput<List<ServiceResolverResponse>>('serviceResolvers');
  }
}
