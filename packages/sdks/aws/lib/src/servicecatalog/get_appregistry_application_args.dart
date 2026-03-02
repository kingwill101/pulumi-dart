// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_servicecatalog_get_appregistry_application_get_appregistry_application_args_doc}
/// Arguments for getAppregistryApplication.
/// {@endtemplate}
/// {@macro pulumi_servicecatalog_get_appregistry_application_get_appregistry_application_args_doc}
class GetAppregistryApplicationArgs {
  /// Application identifier.
  final pulumi.Input<String> id;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [GetAppregistryApplicationArgs].
  /// [id] Application identifier.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  GetAppregistryApplicationArgs({
    required this.id,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'region': ?region,
    };
  }

  factory GetAppregistryApplicationArgs.fromMap(Map<String, dynamic> map) {
    return GetAppregistryApplicationArgs(
      id: (map['id'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
    );
  }
}

