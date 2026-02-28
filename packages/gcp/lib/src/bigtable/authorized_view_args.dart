// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authorized_view_subset_view.dart';

/// {@template pulumi_bigtable_authorized_view_authorized_view_args_doc}
/// The set of arguments for AuthorizedView.
/// {@endtemplate}
/// {@macro pulumi_bigtable_authorized_view_authorized_view_args_doc}
class AuthorizedViewArgs {
  final pulumi.Input<String>? deletionProtection;

  /// The name of the Bigtable instance in which the authorized view belongs.
  final pulumi.Input<String> instanceName;

  /// The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs. If it
  /// is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  ///
  /// -----
  final pulumi.Input<AuthorizedViewSubsetView>? subsetView;

  /// The name of the Bigtable table in which the authorized view belongs.
  final pulumi.Input<String> tableName;

  /// Creates a new [AuthorizedViewArgs].
  /// [deletionProtection] Optional.
  /// [instanceName] The name of the Bigtable instance in which the authorized view belongs.
  /// [name] The name of the authorized view. Must be 1-50 characters and must only contain hyphens, underscores, periods, letters and numbers.
  /// [project] The ID of the project in which the resource belongs. If it
  /// [subsetView] An AuthorizedView permitting access to an explicit subset of a Table. Structure is documented below.
  /// [tableName] The name of the Bigtable table in which the authorized view belongs.
  AuthorizedViewArgs({
    String? deletionProtection,
    required String instanceName,
    String? name,
    String? project,
    AuthorizedViewSubsetView? subsetView,
    required String tableName,
  })  : deletionProtection =
            pulumi.Input.asOptionalInput<String>(deletionProtection),
        instanceName = pulumi.Input.asInput<String>(instanceName),
        name = pulumi.Input.asOptionalInput<String>(name),
        project = pulumi.Input.asOptionalInput<String>(project),
        subsetView =
            pulumi.Input.asOptionalInput<AuthorizedViewSubsetView>(subsetView),
        tableName = pulumi.Input.asInput<String>(tableName);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final deletionProtectionValue = deletionProtection;
    if (deletionProtectionValue != null) {
      map['deletionProtection'] = deletionProtectionValue;
    }
    map['instanceName'] = instanceName;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final subsetViewValue = subsetView;
    if (subsetViewValue != null) {
      map['subsetView'] = pulumi.Input.mapOptionalInputValue<
          AuthorizedViewSubsetView,
          Map<String, dynamic>>(subsetViewValue, (value) => value.toMap());
    }
    map['tableName'] = tableName;
    return map;
  }

  factory AuthorizedViewArgs.fromMap(Map<String, dynamic> map) {
    return AuthorizedViewArgs(
      deletionProtection: map['deletionProtection'] == null
          ? null
          : map['deletionProtection'] as String,
      instanceName: map['instanceName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      subsetView: map['subsetView'] == null
          ? null
          : AuthorizedViewSubsetView.fromMap(
              (map['subsetView'] as Map).cast<String, dynamic>()),
      tableName: map['tableName'] as String,
    );
  }
}
