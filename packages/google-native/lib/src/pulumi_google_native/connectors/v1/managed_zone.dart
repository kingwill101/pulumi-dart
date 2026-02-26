import 'package:pulumi/pulumi.dart';
import 'managed_zone_args.dart';

/// Creates a new ManagedZone in a given project and location.
/// Auto-naming is currently not supported for this resource.
class ManagedZone extends CustomResource {
  /// Created time.
  late final Output<String> createTime;

  /// Optional. Description of the resource.
  late final Output<String> description;

  /// DNS Name of the resource
  late final Output<String> dns;

  /// Optional. Resource labels to represent user-provided metadata. Refer to cloud documentation on labels for more details. https://cloud.google.com/compute/docs/labeling-resources
  late final Output<Map<String, String>> labels;

  /// Required. Identifier to assign to the ManagedZone. Must be unique within scope of the parent resource.
  late final Output<String> managedZoneId;

  /// Resource name of the Managed Zone. Format: projects/{project}/locations/global/managedZones/{managed_zone}
  late final Output<String> name;
  late final Output<String> project;

  /// The name of the Target Project
  late final Output<String> targetProject;

  /// The name of the Target Project VPC Network
  late final Output<String> targetVpc;

  /// Updated time.
  late final Output<String> updateTime;

  ManagedZone(
    String name, {
    ManagedZoneArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:connectors/v1:ManagedZone',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.dns = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.managedZoneId = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.targetProject = Output.createUnknown<String>();
    this.targetVpc = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
