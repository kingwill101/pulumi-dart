// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_backupdisasterrecovery_get_management_server_get_management_server_args_doc}
/// Arguments for getManagementServer.
/// {@endtemplate}
/// {@macro pulumi_backupdisasterrecovery_get_management_server_get_management_server_args_doc}
class GetManagementServerArgs {
  final pulumi.Input<String> location;

  /// Creates a new [GetManagementServerArgs].
  /// [location] Required.
  GetManagementServerArgs({
    required String location,
  }) : location = pulumi.Input.asInput<String>(location);

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['location'] = location;
    return map;
  }

  factory GetManagementServerArgs.fromMap(Map<String, dynamic> map) {
    return GetManagementServerArgs(
      location: map['location'] as String,
    );
  }
}
