// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_cluster.dart';

/// {@template pulumi_bigtable_instance_instance_args_doc}
/// The set of arguments for Instance.
/// {@endtemplate}
/// {@macro pulumi_bigtable_instance_instance_args_doc}
class InstanceArgs {
  /// A block of cluster configuration options. This can be specified at least once, and up
  /// to as many as possible within 8 cloud regions. Removing the field entirely from the config will cause the provider
  /// to default to the backend value. See structure below.
  ///
  /// -----
  final pulumi.Input<List<InstanceCluster>>? clusters;

  /// Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// in the statefile, a `pulumi destroy` or `pulumi up` that would delete the instance will fail.
  final pulumi.Input<bool>? deletionProtection;

  /// The human-readable display name of the Bigtable instance. Defaults to the instance `name`.
  final pulumi.Input<String>? displayName;

  /// Deleting a BigTable instance can be blocked if any backups are present in the instance. When `force_destroy` is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  final pulumi.Input<bool>? forceDestroy;

  /// The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// It is recommended to leave this field unspecified since the distinction between `"DEVELOPMENT"` and `"PRODUCTION"` instances is going away,
  /// and all instances will become `"PRODUCTION"` instances. This means that new and existing `"DEVELOPMENT"` instances will be converted to
  /// `"PRODUCTION"` instances. It is recommended for users to use `"PRODUCTION"` instances in any case, since a 1-node `"PRODUCTION"` instance
  /// is functionally identical to a `"DEVELOPMENT"` instance, but without the accompanying restrictions.
  final pulumi.Input<String>? instanceType;

  /// A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field 'effective_labels' for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [InstanceArgs].
  /// [clusters] A block of cluster configuration options. This can be specified at least once, and up
  /// [deletionProtection] Whether or not to allow this provider to destroy the instance. Unless this field is set to false
  /// [displayName] The human-readable display name of the Bigtable instance. Defaults to the instance `name`.
  /// [forceDestroy] Deleting a BigTable instance can be blocked if any backups are present in the instance. When `force_destroy` is set to true, the Provider will delete all backups found in the BigTable instance before attempting to delete the instance itself. Defaults to false.
  /// [instanceType] The instance type to create. One of `"DEVELOPMENT"` or `"PRODUCTION"`. Defaults to `"PRODUCTION"`.
  /// [labels] A set of key/value label pairs to assign to the resource. Label keys must follow the requirements at https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements.
  /// [name] The name (also called Instance Id in the Cloud Console) of the Cloud Bigtable instance. Must be 6-33 characters and must only contain hyphens, lowercase letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  InstanceArgs({
    List<InstanceCluster>? clusters,
    bool? deletionProtection,
    String? displayName,
    bool? forceDestroy,
    String? instanceType,
    Map<String, String>? labels,
    String? name,
    String? project,
  })  : clusters =
            pulumi.Input.asOptionalInput<List<InstanceCluster>>(clusters),
        deletionProtection =
            pulumi.Input.asOptionalInput<bool>(deletionProtection),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        forceDestroy = pulumi.Input.asOptionalInput<bool>(forceDestroy),
        instanceType = pulumi.Input.asOptionalInput<String>(instanceType),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final clustersValue = clusters;
    if (clustersValue != null) {
      map['clusters'] = pulumi.Input.mapOptionalInputValue<
              List<InstanceCluster>, List<Map<String, dynamic>>>(
          clustersValue,
          (value) =>
              pulumi.Input.encodeList<InstanceCluster, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    final forceDestroyValue = forceDestroy;
    if (forceDestroyValue != null) {
      map['forceDestroy'] = forceDestroyValue;
    }
    final instanceTypeValue = instanceType;
    if (instanceTypeValue != null) {
      map['instanceType'] = instanceTypeValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory InstanceArgs.fromMap(Map<String, dynamic> map) {
    return InstanceArgs(
      clusters: map['clusters'] == null
          ? null
          : pulumi.Input.decodeList<InstanceCluster>(
              map['clusters'],
              (value) => InstanceCluster.fromMap(
                  (value as Map).cast<String, dynamic>())),
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as bool,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      forceDestroy:
          map['forceDestroy'] == null ? null : map['forceDestroy'] as bool,
      instanceType:
          map['instanceType'] == null ? null : map['instanceType'] as String,
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}
