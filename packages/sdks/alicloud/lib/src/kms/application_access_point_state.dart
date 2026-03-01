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
    pulumi.Output<String>? applicationAccessPointName,
    pulumi.Output<String>? description,
    pulumi.Output<List<String>>? policies,
  }) :
      applicationAccessPointName = pulumi.Input.asOptionalInput<String>(applicationAccessPointName),
      description = pulumi.Input.asOptionalInput<String>(description),
      policies = pulumi.Input.asOptionalInput<List<String>>(policies);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccessPointName': ?applicationAccessPointName,
      'description': ?description,
      'policies': ?policies,
    };
  }

  factory ApplicationAccessPointState.fromMap(Map<String, dynamic> map) {
    return ApplicationAccessPointState(
      applicationAccessPointName: map['applicationAccessPointName'] == null ? null : pulumi.Output.create<String>(map['applicationAccessPointName'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      policies: map['policies'] == null ? null : pulumi.Output.create<List<String>>((map['policies'] as List).cast<String>()),
    );
  }
}

