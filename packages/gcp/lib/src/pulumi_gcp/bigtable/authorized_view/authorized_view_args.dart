// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../authorized_view_subset_view/authorized_view_subset_view.dart';

/// The set of arguments for AuthorizedView.
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

  AuthorizedViewArgs({
    this.deletionProtection,
    required this.instanceName,
    this.name,
    this.project,
    this.subsetView,
    required this.tableName,
  });

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
      deletionProtection:
          pulumi.Input.asOptionalInput<String>(map['deletionProtection']),
      instanceName: pulumi.Input.asInput<String>(map['instanceName']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      subsetView: pulumi.Input.asOptionalInput<AuthorizedViewSubsetView>(
          map['subsetView']),
      tableName: pulumi.Input.asInput<String>(map['tableName']),
    );
  }
}
