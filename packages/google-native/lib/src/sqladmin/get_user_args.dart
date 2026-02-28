// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_sqladmin_v1_get_user_args_doc}
/// Arguments for getUser.
/// {@endtemplate}
/// {@macro pulumi_sqladmin_v1_get_user_args_doc}
class GetUserArgs {
  final pulumi.Input<String>? host;
  final pulumi.Input<String> instance;
  final pulumi.Input<String> name;
  final pulumi.Input<String>? project;

  /// Creates a new [GetUserArgs].
  /// [host] Optional.
  /// [instance] Required.
  /// [name] Required.
  /// [project] Optional.
  GetUserArgs({
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

  factory GetUserArgs.fromMap(Map<String, dynamic> map) {
    return GetUserArgs(
      host: map['host'] == null ? null : map['host'] as String,
      instance: map['instance'] as String,
      name: map['name'] as String,
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

