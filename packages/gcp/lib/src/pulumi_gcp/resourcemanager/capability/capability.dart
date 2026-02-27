import 'package:pulumi/pulumi.dart';
import 'capability_args.dart';

/// An app-enabled folder is a folder within the Google Cloud resource hierarchy that has been configured for application management. This folder lets you define and manage App Hub applications. These applications are functional groupings of services and workloads that span multiple projects within that folder and its descendant projects.
///
///
/// To get more information about Capability, see:
///
/// * [API documentation](https://docs.cloud.google.com/resource-manager/reference/rest)
/// * How-to Guides
/// * [Official Documentation](https://docs.cloud.google.com/resource-manager/docs/manage-applications)
///
/// ## Example Usage
///
/// ### Resource Manager Capability
///
///
///
///
/// ## Import
///
/// Capability can be imported using any of these accepted formats:
///
/// * `{{parent}}/capabilities/{{capability_name}}`
///
/// * `{{parent}}/{{capability_name}}`
///
/// When using the `pulumi import` command, Capability can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/capability:Capability default {{parent}}/capabilities/{{capability_name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:resourcemanager/capability:Capability default {{parent}}/{{capability_name}}
/// ```
class Capability extends CustomResource {
  /// Capability name that should be updated on the folder.
  late final Output<String> capabilityName;

  /// Folder on which Capability needs to be updated in the format folders/folder_id.
  late final Output<String> parent;

  /// Capability Value.
  late final Output<bool> value;

  Capability(
    String name, {
    CapabilityArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:resourcemanager/capability:Capability',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.capabilityName = registerOutput<String>('capabilityName');
    this.parent = registerOutput<String>('parent');
    this.value = registerOutput<bool>('value');
  }
}
