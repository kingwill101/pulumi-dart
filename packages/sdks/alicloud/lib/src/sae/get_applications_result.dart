// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_applications_application.dart';

/// Result data returned by getApplications.
class GetApplicationsResult {
  final String? appName;
  final List<GetApplicationsApplication> applications;
  final bool? enableDetails;
  final String? fieldType;
  final String? fieldValue;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? namespaceId;
  final String? orderBy;
  final String? outputFile;
  final bool? reverse;
  final String? status;

  /// Creates a new [GetApplicationsResult].
  /// [appName] Optional.
  /// [applications] Required.
  /// [enableDetails] Optional.
  /// [fieldType] Optional.
  /// [fieldValue] Optional.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [namespaceId] Optional.
  /// [orderBy] Optional.
  /// [outputFile] Optional.
  /// [reverse] Optional.
  /// [status] Optional.
  const GetApplicationsResult({
    this.appName,
    required this.applications,
    this.enableDetails,
    this.fieldType,
    this.fieldValue,
    required this.id,
    required this.ids,
    this.namespaceId,
    this.orderBy,
    this.outputFile,
    this.reverse,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'appName': ?appName,
      'applications': pulumi.Input.encodeList<GetApplicationsApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'enableDetails': ?enableDetails,
      'fieldType': ?fieldType,
      'fieldValue': ?fieldValue,
      'id': id,
      'ids': ids,
      'namespaceId': ?namespaceId,
      'orderBy': ?orderBy,
      'outputFile': ?outputFile,
      'reverse': ?reverse,
      'status': ?status,
    };
  }

  factory GetApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetApplicationsResult(
      appName: (() { final guardedValue = map['appName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      applications: pulumi.Input.decodeList<GetApplicationsApplication>(map['applications']!, (value) => GetApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: (() { final guardedValue = map['enableDetails']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      fieldType: (() { final guardedValue = map['fieldType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      fieldValue: (() { final guardedValue = map['fieldValue']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namespaceId: (() { final guardedValue = map['namespaceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      orderBy: (() { final guardedValue = map['orderBy']; if (guardedValue == null) return null; return guardedValue as String; })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return guardedValue as String; })(),
      reverse: (() { final guardedValue = map['reverse']; if (guardedValue == null) return null; return guardedValue as bool; })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}

