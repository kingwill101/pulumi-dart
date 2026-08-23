// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Grafana users settings
class Users {
  /// Set to true so viewers can access and use explore and perform temporary edits on panels in dashboards they have access to. They cannot save their changes.
  final pulumi.Input<bool>? viewersCanEdit;

  /// Creates a new [Users].
  /// [viewersCanEdit] Set to true so viewers can access and use explore and perform temporary edits on panels in dashboards they have access to. They cannot save their changes.
  const Users({
    this.viewersCanEdit,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'viewersCanEdit': ?viewersCanEdit,
    };
  }

  factory Users.fromMap(Map<String, dynamic> map) {
    return Users(
      viewersCanEdit: (() { final guardedValue = map['viewersCanEdit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
