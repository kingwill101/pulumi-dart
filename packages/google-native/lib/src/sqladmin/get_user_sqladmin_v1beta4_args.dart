// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1beta4_get_user_sqladmin_v1beta4_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1beta4_get_user_sqladmin_v1beta4_args_doc}
class GetUserSqladminV1beta4Args {
  final pulumi.Input<String>? host;
  final pulumi.Input<String> instance;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetUserSqladminV1beta4Args].
  /// [host] Optional.
  /// [instance] Required.
  /// [name] Required.
  /// [project] Optional.
  GetUserSqladminV1beta4Args({
    String? host,
    required String instance,
    required String name,
    String? project,
  }) :
      host = pulumi.Input.asOptionalInput<String>(host),
      instance = pulumi.Input.asInput<String>(instance),
      name = pulumi.Input.asInput<String>(name),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'host': ?host,
      'instance': instance,
      'name': name,
      'project': ?project,
    };
  }

  factory GetUserSqladminV1beta4Args.fromMap(Map<String, dynamic> map) {
    return GetUserSqladminV1beta4Args(
      host: map['host'] == null ? null : map['host'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

