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
    required this.applicationAccessPointName,
    this.description,
    required this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccessPointName': applicationAccessPointName,
      'description': ?description,
      'policies': policies,
    };
  }

  factory ApplicationAccessPointArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessPointArgs(
      applicationAccessPointName: pulumi.Input.fromValue(
        map['applicationAccessPointName'] as String,
      ),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      policies: pulumi.Input.fromValue(
        (map['policies'] as List).cast<String>(),
      ),
    );
  }
}
