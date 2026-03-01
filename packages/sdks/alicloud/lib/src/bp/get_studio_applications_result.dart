// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_studio_applications_application.dart';

/// Result data returned by getStudioApplications.
class GetStudioApplicationsResult {
  /// A list of Cloud Architect Design Tools (BPStudio) Applications. Each element contains the following attributes:
  final List<GetStudioApplicationsApplication> applications;
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? keyword;
  final int? maxResults;
  final String? nameRegex;
  /// A list of Application names.
  final List<String> names;
  final int? orderType;
  final String? outputFile;
  /// The ID of the resource group.
  final String? resourceGroupId;
  /// The status of the Application.
  final String? status;

  /// Creates a new [GetStudioApplicationsResult].
  /// [applications] A list of Cloud Architect Design Tools (BPStudio) Applications. Each element contains the following attributes:
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [keyword] Optional.
  /// [maxResults] Optional.
  /// [nameRegex] Optional.
  /// [names] A list of Application names.
  /// [orderType] Optional.
  /// [outputFile] Optional.
  /// [resourceGroupId] The ID of the resource group.
  /// [status] The status of the Application.
  GetStudioApplicationsResult({
    required this.applications,
    required this.id,
    required this.ids,
    this.keyword,
    this.maxResults,
    this.nameRegex,
    required this.names,
    this.orderType,
    this.outputFile,
    this.resourceGroupId,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applications': pulumi.Input.encodeList<GetStudioApplicationsApplication, Map<String, dynamic>>(applications, (value) => value.toMap()),
      'id': id,
      'ids': ids,
      'keyword': ?keyword,
      'maxResults': ?maxResults,
      'nameRegex': ?nameRegex,
      'names': names,
      'orderType': ?orderType,
      'outputFile': ?outputFile,
      'resourceGroupId': ?resourceGroupId,
      'status': ?status,
    };
  }

  factory GetStudioApplicationsResult.fromMap(Map<String, dynamic> map) {
    return GetStudioApplicationsResult(
      applications: pulumi.Input.decodeList<GetStudioApplicationsApplication>(map['applications'], (value) => GetStudioApplicationsApplication.fromMap((value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      keyword: map['keyword'] == null ? null : map['keyword'] as String,
      maxResults: map['maxResults'] == null ? null : map['maxResults'] as int,
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      orderType: map['orderType'] == null ? null : map['orderType'] as int,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      status: map['status'] == null ? null : map['status'] as String,
    );
  }
}

