// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The api properties for special APIs.
class ApiProperties {
  /// (Metrics Advisor Only) The Azure AD Client Id (Application Id).
  final pulumi.Input<String>? aadClientId;
  /// (Metrics Advisor Only) The Azure AD Tenant Id.
  final pulumi.Input<String>? aadTenantId;
  /// (Personalization Only) The flag to enable statistics of Bing Search.
  final pulumi.Input<String>? eventHubConnectionString;
  /// (QnAMaker Only) The Azure Search endpoint id of QnAMaker.
  final pulumi.Input<String>? qnaAzureSearchEndpointId;
  /// (QnAMaker Only) The Azure Search endpoint key of QnAMaker.
  final pulumi.Input<String>? qnaAzureSearchEndpointKey;
  /// (QnAMaker Only) The runtime endpoint of QnAMaker.
  final pulumi.Input<String>? qnaRuntimeEndpoint;
  /// (Bing Search Only) The flag to enable statistics of Bing Search.
  final pulumi.Input<bool>? statisticsEnabled;
  /// (Personalization Only) The storage account connection string.
  final pulumi.Input<String>? storageAccountConnectionString;
  /// (Metrics Advisor Only) The super user of Metrics Advisor.
  final pulumi.Input<String>? superUser;
  /// (Metrics Advisor Only) The website name of Metrics Advisor.
  final pulumi.Input<String>? websiteName;

  /// Creates a new [ApiProperties].
  /// [aadClientId] (Metrics Advisor Only) The Azure AD Client Id (Application Id).
  /// [aadTenantId] (Metrics Advisor Only) The Azure AD Tenant Id.
  /// [eventHubConnectionString] (Personalization Only) The flag to enable statistics of Bing Search.
  /// [qnaAzureSearchEndpointId] (QnAMaker Only) The Azure Search endpoint id of QnAMaker.
  /// [qnaAzureSearchEndpointKey] (QnAMaker Only) The Azure Search endpoint key of QnAMaker.
  /// [qnaRuntimeEndpoint] (QnAMaker Only) The runtime endpoint of QnAMaker.
  /// [statisticsEnabled] (Bing Search Only) The flag to enable statistics of Bing Search.
  /// [storageAccountConnectionString] (Personalization Only) The storage account connection string.
  /// [superUser] (Metrics Advisor Only) The super user of Metrics Advisor.
  /// [websiteName] (Metrics Advisor Only) The website name of Metrics Advisor.
  ApiProperties({
    this.aadClientId,
    this.aadTenantId,
    this.eventHubConnectionString,
    this.qnaAzureSearchEndpointId,
    this.qnaAzureSearchEndpointKey,
    this.qnaRuntimeEndpoint,
    this.statisticsEnabled,
    this.storageAccountConnectionString,
    this.superUser,
    this.websiteName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'aadClientId': ?aadClientId,
      'aadTenantId': ?aadTenantId,
      'eventHubConnectionString': ?eventHubConnectionString,
      'qnaAzureSearchEndpointId': ?qnaAzureSearchEndpointId,
      'qnaAzureSearchEndpointKey': ?qnaAzureSearchEndpointKey,
      'qnaRuntimeEndpoint': ?qnaRuntimeEndpoint,
      'statisticsEnabled': ?statisticsEnabled,
      'storageAccountConnectionString': ?storageAccountConnectionString,
      'superUser': ?superUser,
      'websiteName': ?websiteName,
    };
  }

  factory ApiProperties.fromMap(Map<String, dynamic> map) {
    return ApiProperties(
      aadClientId: map['aadClientId'] == null ? null : (map['aadClientId'] as String).input(),
      aadTenantId: map['aadTenantId'] == null ? null : (map['aadTenantId'] as String).input(),
      eventHubConnectionString: map['eventHubConnectionString'] == null ? null : (map['eventHubConnectionString'] as String).input(),
      qnaAzureSearchEndpointId: map['qnaAzureSearchEndpointId'] == null ? null : (map['qnaAzureSearchEndpointId'] as String).input(),
      qnaAzureSearchEndpointKey: map['qnaAzureSearchEndpointKey'] == null ? null : (map['qnaAzureSearchEndpointKey'] as String).input(),
      qnaRuntimeEndpoint: map['qnaRuntimeEndpoint'] == null ? null : (map['qnaRuntimeEndpoint'] as String).input(),
      statisticsEnabled: map['statisticsEnabled'] == null ? null : (map['statisticsEnabled'] as bool).input(),
      storageAccountConnectionString: map['storageAccountConnectionString'] == null ? null : (map['storageAccountConnectionString'] as String).input(),
      superUser: map['superUser'] == null ? null : (map['superUser'] as String).input(),
      websiteName: map['websiteName'] == null ? null : (map['websiteName'] as String).input(),
    );
  }
}

