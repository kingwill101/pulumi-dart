// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_applications_application.dart';

/// Result data returned by getApplications.
class GetApplicationsResult {
  /// A list of applications.
  final List<GetApplicationsApplication> applications;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  /// A list of application IDs.
  final List<String> ids;
  final String? nameRegex;
  /// A list of applications names.
  final List<String> names;
  final String? outputFile;

  /// Creates a new [GetApplicationsResult].
  /// [applications] A list of applications.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] A list of application IDs.
  /// [nameRegex] Optional.
  /// [names] A list of applications names.
  /// [outputFile] Optional.
  const GetApplicationsResult({
    required this.applications,
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': pulumi.Input.encodeList<GetApplicationsApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
    };
  }

  factory GetApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationsResult(
      applications: pulumi.Input.decodeList<GetApplicationsApplication>(map['applications']!, (value) => GetApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return guardedValue as String; })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

