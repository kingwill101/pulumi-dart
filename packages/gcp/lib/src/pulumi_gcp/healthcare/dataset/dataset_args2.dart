// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../dataset_encryption_spec/dataset_encryption_spec.dart';

/// The set of arguments for Dataset.
class DatasetArgs2 {
  /// A nested object resource.
  /// Structure is documented below.
  final Input<DatasetEncryptionSpec>? encryptionSpec;

  /// The location for the Dataset.
  final Input<String> location;

  /// The resource name for the Dataset.
  final Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// The default timezone used by this dataset. Must be a either a valid IANA time zone name such as
  /// "America/New_York" or empty, which defaults to UTC. This is used for parsing times in resources
  /// (e.g., HL7 messages) where no explicit timezone is specified.
  final Input<String>? timeZone;

  DatasetArgs2({
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
      map['encryptionSpec'] = Input.mapOptionalInputValue<DatasetEncryptionSpec,
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

  factory DatasetArgs2.fromMap(Map<String, dynamic> map) {
    return DatasetArgs2(
      encryptionSpec:
          Input.asOptionalInput<DatasetEncryptionSpec>(map['encryptionSpec']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      project: Input.asOptionalInput<String>(map['project']),
      timeZone: Input.asOptionalInput<String>(map['timeZone']),
    );
  }
}
