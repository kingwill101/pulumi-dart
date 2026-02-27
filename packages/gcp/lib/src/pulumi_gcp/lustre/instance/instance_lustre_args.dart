// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../instance_access_rules_options/instance_access_rules_options.dart';

/// The set of arguments for Instance.
class InstanceLustreArgs {
  /// Access control rules for the Lustre instance. Configures default root
  /// squashing behavior and specific access rules based on IP addresses.
  /// Structure is documented below.
  final pulumi.Input<InstanceAccessRulesOptions>? accessRulesOptions;

  /// The storage capacity of the instance in gibibytes (GiB). Allowed values
  /// are from `18000` to `954000`, in increments of 9000.
  final pulumi.Input<String> capacityGib;

  /// A user-readable description of the instance.
  final pulumi.Input<String>? description;

  /// The filesystem name for this instance. This name is used by client-side
  /// tools, including when mounting the instance. Must be eight characters or
  /// less and can only contain letters and numbers.
  final pulumi.Input<String> filesystem;

  /// Indicates whether you want to enable support for GKE clients. By default,
  /// GKE clients are not supported.
  final pulumi.Input<bool>? gkeSupportEnabled;

  /// The name of the Managed Lustre instance.
  /// * Must contain only lowercase letters, numbers, and hyphens.
  /// * Must start with a letter.
  /// * Must be between 1-63 characters.
  /// * Must end with a number or a letter.
  final pulumi.Input<String> instanceId;

  /// The KMS key id to use for encryption of the Lustre instance.
  final pulumi.Input<String>? kmsKey;

  /// Labels as key value pairs.
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;

  /// The full name of the VPC network to which the instance is connected.
  /// Must be in the format
  /// `projects/{project_id}/global/networks/{network_name}`.
  final pulumi.Input<String> network;

  /// The throughput of the instance in MB/s/TiB.
  /// Valid values are 125, 250, 500, 1000.
  final pulumi.Input<String> perUnitStorageThroughput;

  /// The placement policy name for the instance in the format of
  /// projects/{project}/locations/{location}/resourcePolicies/{resource_policy}
  final pulumi.Input<String>? placementPolicy;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  InstanceLustreArgs({
    this.accessRulesOptions,
    required this.capacityGib,
    this.description,
    required this.filesystem,
    this.gkeSupportEnabled,
    required this.instanceId,
    this.kmsKey,
    this.labels,
    required this.location,
    required this.network,
    required this.perUnitStorageThroughput,
    this.placementPolicy,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final accessRulesOptionsValue = accessRulesOptions;
    if (accessRulesOptionsValue != null) {
      map['accessRulesOptions'] = pulumi.Input.mapOptionalInputValue<
              InstanceAccessRulesOptions, Map<String, dynamic>>(
          accessRulesOptionsValue, (value) => value.toMap());
    }
    map['capacityGib'] = capacityGib;
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['filesystem'] = filesystem;
    final gkeSupportEnabledValue = gkeSupportEnabled;
    if (gkeSupportEnabledValue != null) {
      map['gkeSupportEnabled'] = gkeSupportEnabledValue;
    }
    map['instanceId'] = instanceId;
    final kmsKeyValue = kmsKey;
    if (kmsKeyValue != null) {
      map['kmsKey'] = kmsKeyValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['location'] = location;
    map['network'] = network;
    map['perUnitStorageThroughput'] = perUnitStorageThroughput;
    final placementPolicyValue = placementPolicy;
    if (placementPolicyValue != null) {
      map['placementPolicy'] = placementPolicyValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceLustreArgs.fromMap(Map<String, dynamic> map) {
    return InstanceLustreArgs(
      accessRulesOptions:
          pulumi.Input.asOptionalInput<InstanceAccessRulesOptions>(
              map['accessRulesOptions']),
      capacityGib: pulumi.Input.asInput<String>(map['capacityGib']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      filesystem: pulumi.Input.asInput<String>(map['filesystem']),
      gkeSupportEnabled:
          pulumi.Input.asOptionalInput<bool>(map['gkeSupportEnabled']),
      instanceId: pulumi.Input.asInput<String>(map['instanceId']),
      kmsKey: pulumi.Input.asOptionalInput<String>(map['kmsKey']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asInput<String>(map['location']),
      network: pulumi.Input.asInput<String>(map['network']),
      perUnitStorageThroughput:
          pulumi.Input.asInput<String>(map['perUnitStorageThroughput']),
      placementPolicy:
          pulumi.Input.asOptionalInput<String>(map['placementPolicy']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
