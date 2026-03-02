// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering ApplicationAccessPoint resources.
class ApplicationAccessPointState {
  /// Application Access Point Name.
  final pulumi.Input<String>? applicationAccessPointName;
  /// Description .
  final pulumi.Input<String>? description;
  /// The policies that have bound to the Application Access Point (AAP).
  final pulumi.Input<List<String>>? policies;

  /// Creates a new [ApplicationAccessPointState].
  /// [applicationAccessPointName] Application Access Point Name.
  /// [description] Description .
  /// [policies] The policies that have bound to the Application Access Point (AAP).
  ApplicationAccessPointState({
    this.applicationAccessPointName,
    this.description,
    this.policies,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccessPointName': ?applicationAccessPointName,
      'description': ?description,
      'policies': ?policies,
    };
  }

  factory ApplicationAccessPointState.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessPointState(
      applicationAccessPointName: map['applicationAccessPointName'] == null ? null : (map['applicationAccessPointName']! as String).input(),
      description: map['description'] == null ? null : (map['description']! as String).input(),
      policies: map['policies'] == null ? null : ((map['policies']! as List).cast<String>()).input(),
    );
  }
}

