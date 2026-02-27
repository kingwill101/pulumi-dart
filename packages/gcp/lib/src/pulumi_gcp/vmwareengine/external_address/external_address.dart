import 'package:pulumi/pulumi.dart';
import 'external_address_args.dart';

/// An allocated external IP address and its corresponding internal IP address in a private cloud.
///
///
/// To get more information about ExternalAddress, see:
///
/// * [API documentation](https://cloud.google.com/vmware-engine/docs/reference/rest/v1/projects.locations.privateClouds.externalAddresses)
///
/// ## Example Usage
///
/// ### Vmware Engine External Address Basic
///
///
///
///
/// ## Import
///
/// ExternalAddress can be imported using any of these accepted formats:
///
/// * `{{parent}}/externalAddresses/{{name}}`
///
/// When using the `pulumi import` command, ExternalAddress can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/externalAddress:ExternalAddress default {{parent}}/externalAddresses/{{name}}
/// ```
class ExternalAddress extends CustomResource {
  /// Creation time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and
  /// up to nine fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> createTime;

  /// User-provided description for this resource.
  late final Output<String?> description;

  /// The external IP address of a workload VM.
  late final Output<String> externalIp;

  /// The internal IP address of a workload VM.
  late final Output<String> internalIp;

  /// The ID of the external IP Address.
  late final Output<String> name;

  /// The resource name of the private cloud to create a new external address in.
  /// Resource names are schemeless URIs that follow the conventions in https://cloud.google.com/apis/design/resource_names.
  /// For example: projects/my-project/locations/us-west1-a/privateClouds/my-cloud
  late final Output<String> parent;

  /// State of the resource.
  late final Output<String> state;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last updated time of this resource.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up to nine
  /// fractional digits. Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  late final Output<String> updateTime;

  ExternalAddress(
    String name, {
    ExternalAddressArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/externalAddress:ExternalAddress',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.externalIp = registerOutput<String>('externalIp');
    this.internalIp = registerOutput<String>('internalIp');
    this.name = registerOutput<String>('name');
    this.parent = registerOutput<String>('parent');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
