// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kms_application_access_point_application_access_point_args_doc}
/// The set of arguments for ApplicationAccessPoint.
/// {@endtemplate}
/// {@macro pulumi_kms_application_access_point_application_access_point_args_doc}
class ApplicationAccessPointArgs {
  /// Application Access Point Name.
  final pulumi.Input<String> applicationAccessPointName;
  /// Description .
  final pulumi.Input<String>? description;
  /// The policies that have bound to the Application Access Point (AAP).
  final pulumi.Input<List<String>> policies;

  /// Creates a new [ApplicationAccessPointArgs].
  /// [applicationAccessPointName] Application Access Point Name.
  /// [description] Description .
  /// [policies] The policies that have bound to the Application Access Point (AAP).
  ApplicationAccessPointArgs({
    required String applicationAccessPointName,
    String? description,
    required List<String> policies,
  }) :
      applicationAccessPointName = pulumi.Input.asInput<String>(applicationAccessPointName),
      description = pulumi.Input.asOptionalInput<String>(description),
      policies = pulumi.Input.asInput<List<String>>(policies);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccessPointName': applicationAccessPointName,
      'description': ?description,
      'policies': policies,
    };
  }

  factory ApplicationAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessPointArgs(
      applicationAccessPointName: map['applicationAccessPointName'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      policies: (map['policies'] as List).cast<String>(),
    );
  }
}

