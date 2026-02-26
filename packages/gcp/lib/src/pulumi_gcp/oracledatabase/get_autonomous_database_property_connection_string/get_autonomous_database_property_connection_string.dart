// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_autonomous_database_property_connection_string_all_connection_string/get_autonomous_database_property_connection_string_all_connection_string.dart';
import '../get_autonomous_database_property_connection_string_profile/get_autonomous_database_property_connection_string_profile.dart';

class GetAutonomousDatabasePropertyConnectionString {
  /// A list of all connection strings that can be used to connect to the
  /// Autonomous Database.
  final List<GetAutonomousDatabasePropertyConnectionStringAllConnectionString>
      allConnectionStrings;

  /// The database service provides the least level of resources to each SQL
  /// statement, but supports the most number of concurrent SQL statements.
  final String dedicated;

  /// The database service provides the highest level of resources to each SQL
  /// statement.
  final String high;

  /// The database service provides the least level of resources to each SQL
  /// statement.
  final String low;

  /// The database service provides a lower level of resources to each SQL
  /// statement.
  final String medium;

  /// A list of connection string profiles to allow clients to group, filter, and
  /// select values based on the structured metadata.
  final List<GetAutonomousDatabasePropertyConnectionStringProfile> profiles;

  GetAutonomousDatabasePropertyConnectionString({
    required this.allConnectionStrings,
    required this.dedicated,
    required this.high,
    required this.low,
    required this.medium,
    required this.profiles,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['allConnectionStrings'] = Input.encodeList<
        GetAutonomousDatabasePropertyConnectionStringAllConnectionString,
        Map<String, dynamic>>(allConnectionStrings, (value) => value.toMap());
    map['dedicated'] = dedicated;
    map['high'] = high;
    map['low'] = low;
    map['medium'] = medium;
    map['profiles'] = Input.encodeList<
        GetAutonomousDatabasePropertyConnectionStringProfile,
        Map<String, dynamic>>(profiles, (value) => value.toMap());
    return map;
  }

  factory GetAutonomousDatabasePropertyConnectionString.fromMap(
      Map<String, dynamic> map) {
    return GetAutonomousDatabasePropertyConnectionString(
      allConnectionStrings: Input.decodeList<
              GetAutonomousDatabasePropertyConnectionStringAllConnectionString>(
          map['allConnectionStrings'],
          (value) =>
              GetAutonomousDatabasePropertyConnectionStringAllConnectionString
                  .fromMap((value as Map).cast<String, dynamic>())),
      dedicated: map['dedicated'] as String,
      high: map['high'] as String,
      low: map['low'] as String,
      medium: map['medium'] as String,
      profiles: Input.decodeList<
              GetAutonomousDatabasePropertyConnectionStringProfile>(
          map['profiles'],
          (value) =>
              GetAutonomousDatabasePropertyConnectionStringProfile.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
