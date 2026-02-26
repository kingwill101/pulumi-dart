// ignore_for_file: unused_element, unnecessary_cast

import 's3_compatible_metadata_auth_method.dart';
import 's3_compatible_metadata_list_api.dart';
import 's3_compatible_metadata_protocol.dart';
import 's3_compatible_metadata_request_model.dart';

/// S3CompatibleMetadata contains the metadata fields that apply to the basic types of S3-compatible data providers.
class S3CompatibleMetadata {
  /// Specifies the authentication and authorization method used by the storage service. When not specified, Transfer Service will attempt to determine right auth method to use.
  final S3CompatibleMetadataAuthMethod? authMethod;

  /// The Listing API to use for discovering objects. When not specified, Transfer Service will attempt to determine the right API to use.
  final S3CompatibleMetadataListApi? listApi;

  /// Specifies the network protocol of the agent. When not specified, the default value of NetworkProtocol NETWORK_PROTOCOL_HTTPS is used.
  final S3CompatibleMetadataProtocol? protocol;

  /// Specifies the API request model used to call the storage service. When not specified, the default value of RequestModel REQUEST_MODEL_VIRTUAL_HOSTED_STYLE is used.
  final S3CompatibleMetadataRequestModel? requestModel;

  S3CompatibleMetadata({
    this.authMethod,
    this.listApi,
    this.protocol,
    this.requestModel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final authMethodValue = authMethod;
    if (authMethodValue != null) {
      map['authMethod'] = authMethodValue.value;
    }
    final listApiValue = listApi;
    if (listApiValue != null) {
      map['listApi'] = listApiValue.value;
    }
    final protocolValue = protocol;
    if (protocolValue != null) {
      map['protocol'] = protocolValue.value;
    }
    final requestModelValue = requestModel;
    if (requestModelValue != null) {
      map['requestModel'] = requestModelValue.value;
    }
    return map;
  }

  factory S3CompatibleMetadata.fromMap(Map<String, dynamic> map) {
    return S3CompatibleMetadata(
      authMethod: map['authMethod'] == null
          ? null
          : S3CompatibleMetadataAuthMethod.fromValue(
              map['authMethod'] as String),
      listApi: map['listApi'] == null
          ? null
          : S3CompatibleMetadataListApi.fromValue(map['listApi'] as String),
      protocol: map['protocol'] == null
          ? null
          : S3CompatibleMetadataProtocol.fromValue(map['protocol'] as String),
      requestModel: map['requestModel'] == null
          ? null
          : S3CompatibleMetadataRequestModel.fromValue(
              map['requestModel'] as String),
    );
  }
}
