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
  GetApplicationsResult({
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
      appName: map['appName'] == null ? null : map['appName']! as String,
      applications: pulumi.Input.decodeList<GetApplicationsApplication>(map['applications'], (value) => GetApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      enableDetails: map['enableDetails'] == null ? null : map['enableDetails']! as bool,
      fieldType: map['fieldType'] == null ? null : map['fieldType']! as String,
      fieldValue: map['fieldValue'] == null ? null : map['fieldValue']! as String,
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      namespaceId: map['namespaceId'] == null ? null : map['namespaceId']! as String,
      orderBy: map['orderBy'] == null ? null : map['orderBy']! as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile']! as String,
      reverse: map['reverse'] == null ? null : map['reverse']! as bool,
      status: map['status'] == null ? null : map['status']! as String,
    );
  }
}

