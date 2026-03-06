// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The api properties for special APIs.
class ApiPropertiesResponse {
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

  /// Creates a new [ApiPropertiesResponse].
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
  const ApiPropertiesResponse({
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

  factory ApiPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return ApiPropertiesResponse(
      aadClientId: (() { final guardedValue = map['aadClientId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      aadTenantId: (() { final guardedValue = map['aadTenantId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      eventHubConnectionString: (() { final guardedValue = map['eventHubConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qnaAzureSearchEndpointId: (() { final guardedValue = map['qnaAzureSearchEndpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qnaAzureSearchEndpointKey: (() { final guardedValue = map['qnaAzureSearchEndpointKey']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      qnaRuntimeEndpoint: (() { final guardedValue = map['qnaRuntimeEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      statisticsEnabled: (() { final guardedValue = map['statisticsEnabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      storageAccountConnectionString: (() { final guardedValue = map['storageAccountConnectionString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      superUser: (() { final guardedValue = map['superUser']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      websiteName: (() { final guardedValue = map['websiteName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

