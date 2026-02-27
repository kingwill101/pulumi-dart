// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../dataset_encryption_spec/dataset_encryption_spec.dart';

/// The set of arguments for Dataset.
class DatasetHealthcareArgs {
  /// A nested object resource.
  /// Structure is documented below.
  final pulumi.Input<DatasetEncryptionSpec>? encryptionSpec;

  /// The location for the Dataset.
  final pulumi.Input<String> location;

  /// The resource name for the Dataset.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  final pulumi.Input<String>? timeZone;

  DatasetHealthcareArgs({
    this.encryptionSpec,
    required this.location,
    this.name,
    this.project,
    this.timeZone,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final encryptionSpecValue = encryptionSpec;
    if (encryptionSpecValue != null) {
      map['encryptionSpec'] = pulumi.Input.mapOptionalInputValue<
          DatasetEncryptionSpec,
          Map<String, dynamic>>(encryptionSpecValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final timeZoneValue = timeZone;
    if (timeZoneValue != null) {
      map['timeZone'] = timeZoneValue;
    }
    return map;
  }

  factory DatasetHealthcareArgs.fromMap(Map<String, dynamic> map) {
    return DatasetHealthcareArgs(
      encryptionSpec: pulumi.Input.asOptionalInput<DatasetEncryptionSpec>(
          map['encryptionSpec']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      timeZone: pulumi.Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
