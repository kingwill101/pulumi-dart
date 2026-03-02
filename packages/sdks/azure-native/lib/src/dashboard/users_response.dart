// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana users settings
class UsersResponse {
  /// Set to true so viewers can access and use explore and perform temporary edits on panels in dashboards they have access to. They cannot save their changes.
  final pulumi.Input<bool>? viewersCanEdit;

  /// Creates a new [UsersResponse].
  /// [viewersCanEdit] Set to true so viewers can access and use explore and perform temporary edits on panels in dashboards they have access to. They cannot save their changes.
  UsersResponse({
    this.viewersCanEdit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewersCanEdit': ?viewersCanEdit,
    };
  }

  factory UsersResponse.fromMap(Map<String, dynamic> map) {
    return UsersResponse(
      viewersCanEdit: map['viewersCanEdit'] == null ? null : (map['viewersCanEdit']! as bool).input(),
    );
  }
}

