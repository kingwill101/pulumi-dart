// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_supported_database_flags_supported_database_flag/get_supported_database_flags_supported_database_flag.dart';

/// Result data returned by getSupportedDatabaseFlags.
class GetSupportedDatabaseFlagsResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String location;
  final String? project;

  /// Contains a list of <span pulumi-lang-nodejs="`flag`" pulumi-lang-dotnet="`Flag`" pulumi-lang-go="`flag`" pulumi-lang-python="`flag`" pulumi-lang-yaml="`flag`" pulumi-lang-java="`flag`">`flag`</span>, which contains the details about a particular flag.
  final List<GetSupportedDatabaseFlagsSupportedDatabaseFlag>
      supportedDatabaseFlags;

  GetSupportedDatabaseFlagsResult({
    required this.id,
    required this.location,
    this.project,
    required this.supportedDatabaseFlags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['location'] = location;
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    map['supportedDatabaseFlags'] = Input.encodeList<
        GetSupportedDatabaseFlagsSupportedDatabaseFlag,
        Map<String, dynamic>>(supportedDatabaseFlags, (value) => value.toMap());
    return map;
  }

  factory GetSupportedDatabaseFlagsResult.fromMap(Map<String, dynamic> map) {
    return GetSupportedDatabaseFlagsResult(
      id: map['id'] as String,
      location: map['location'] as String,
      project: map['project'] == null ? null : map['project'] as String,
      supportedDatabaseFlags:
          Input.decodeList<GetSupportedDatabaseFlagsSupportedDatabaseFlag>(
              map['supportedDatabaseFlags'],
              (value) => GetSupportedDatabaseFlagsSupportedDatabaseFlag.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
