// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../index/provider_assume_role.dart';
import '../index/provider_assume_role_with_oidc.dart';
import '../index/provider_endpoint.dart';
import '../index/provider_sign_version.dart';

/// {@template pulumi_providers_provider_args_doc}
/// The set of arguments for Provider.
/// {@endtemplate}
/// {@macro pulumi_providers_provider_args_doc}
class ProviderArgs {
  /// The access key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  final pulumi.Input<String>? accessKey;
  /// The account ID for some service API operations. You can retrieve this from the 'Security Settings' section of the Alibaba Cloud console.
  final pulumi.Input<String>? accountId;
  final pulumi.Input<String>? accountType;
  final pulumi.Input<ProviderAssumeRole>? assumeRole;
  final pulumi.Input<ProviderAssumeRoleWithOidc>? assumeRoleWithOidc;
  /// The maximum timeout of the client connection server.
  final pulumi.Input<int>? clientConnectTimeout;
  /// The maximum timeout of the client read request.
  final pulumi.Input<int>? clientReadTimeout;
  final pulumi.Input<String>? configurationSource;
  /// The URI of sidecar credentials service.
  final pulumi.Input<String>? credentialsUri;
  /// The RAM Role Name attached on a ECS instance for API operations. You can retrieve this from the 'Access Control' section of the Alibaba Cloud console.
  final pulumi.Input<String>? ecsRoleName;
  final pulumi.Input<List<ProviderEndpoint>>? endpoints;
  final pulumi.Input<String>? fc;
  final pulumi.Input<String>? logEndpoint;
  /// The maximum retry timeout of the request.
  final pulumi.Input<int>? maxRetryTimeout;
  final pulumi.Input<String>? mnsEndpoint;
  final pulumi.Input<String>? otsInstanceName;
  /// The profile for API operations. If not set, the default profile created with `aliyun configure` will be used.
  final pulumi.Input<String>? profile;
  final pulumi.Input<String>? protocol;
  /// The region where Alibaba Cloud operations will take place. Examples are cn-beijing, cn-hangzhou, eu-central-1, etc.
  final pulumi.Input<String>? region;
  /// The secret key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  final pulumi.Input<String>? secretKey;
  /// The security transport for the assume role invoking.
  final pulumi.Input<String>? secureTransport;
  /// security token. A security token is only required if you are using Security Token Service.
  final pulumi.Input<String>? securityToken;
  final pulumi.Input<String>? securityTransport;
  /// The path to the shared credentials file. If not set this defaults to ~/.aliyun/config.json
  final pulumi.Input<String>? sharedCredentialsFile;
  final pulumi.Input<ProviderSignVersion>? signVersion;
  /// Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet).
  final pulumi.Input<bool>? skipRegionValidation;
  /// The source ip for the assume role invoking.
  final pulumi.Input<String>? sourceIp;

  /// Creates a new [ProviderArgs].
  /// [accessKey] The access key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  /// [accountId] The account ID for some service API operations. You can retrieve this from the 'Security Settings' section of the Alibaba Cloud console.
  /// [accountType] Optional.
  /// [assumeRole] Optional.
  /// [assumeRoleWithOidc] Optional.
  /// [clientConnectTimeout] The maximum timeout of the client connection server.
  /// [clientReadTimeout] The maximum timeout of the client read request.
  /// [configurationSource] Optional.
  /// [credentialsUri] The URI of sidecar credentials service.
  /// [ecsRoleName] The RAM Role Name attached on a ECS instance for API operations. You can retrieve this from the 'Access Control' section of the Alibaba Cloud console.
  /// [endpoints] Optional.
  /// [fc] Optional.
  /// [logEndpoint] Optional.
  /// [maxRetryTimeout] The maximum retry timeout of the request.
  /// [mnsEndpoint] Optional.
  /// [otsInstanceName] Optional.
  /// [profile] The profile for API operations. If not set, the default profile created with `aliyun configure` will be used.
  /// [protocol] Optional.
  /// [region] The region where Alibaba Cloud operations will take place. Examples are cn-beijing, cn-hangzhou, eu-central-1, etc.
  /// [secretKey] The secret key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  /// [secureTransport] The security transport for the assume role invoking.
  /// [securityToken] security token. A security token is only required if you are using Security Token Service.
  /// [securityTransport] Optional.
  /// [sharedCredentialsFile] The path to the shared credentials file. If not set this defaults to ~/.aliyun/config.json
  /// [signVersion] Optional.
  /// [skipRegionValidation] Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet).
  /// [sourceIp] The source ip for the assume role invoking.
  ProviderArgs({
    this.accessKey,
    this.accountId,
    this.accountType,
    this.assumeRole,
    this.assumeRoleWithOidc,
    this.clientConnectTimeout,
    this.clientReadTimeout,
    this.configurationSource,
    this.credentialsUri,
    this.ecsRoleName,
    this.endpoints,
    this.fc,
    this.logEndpoint,
    this.maxRetryTimeout,
    this.mnsEndpoint,
    this.otsInstanceName,
    this.profile,
    this.protocol,
    this.region,
    this.secretKey,
    this.secureTransport,
    this.securityToken,
    this.securityTransport,
    this.sharedCredentialsFile,
    this.signVersion,
    this.skipRegionValidation,
    this.sourceIp,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessKey': ?accessKey,
      'accountId': ?accountId,
      'accountType': ?accountType,
      'assumeRole': ?pulumi.Input.mapOptionalInputValue<ProviderAssumeRole, Map<String, dynamic>>(assumeRole, (value) => value.toMap()),
      'assumeRoleWithOidc': ?pulumi.Input.mapOptionalInputValue<ProviderAssumeRoleWithOidc, Map<String, dynamic>>(assumeRoleWithOidc, (value) => value.toMap()),
      'clientConnectTimeout': ?clientConnectTimeout,
      'clientReadTimeout': ?clientReadTimeout,
      'configurationSource': ?configurationSource,
      'credentialsUri': ?credentialsUri,
      'ecsRoleName': ?ecsRoleName,
      'endpoints': ?pulumi.Input.mapOptionalInputValue<List<ProviderEndpoint>, List<Map<String, dynamic>>>(endpoints, (value) => pulumi.Input.encodeList<ProviderEndpoint, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fc': ?fc,
      'logEndpoint': ?logEndpoint,
      'maxRetryTimeout': ?maxRetryTimeout,
      'mnsEndpoint': ?mnsEndpoint,
      'otsInstanceName': ?otsInstanceName,
      'profile': ?profile,
      'protocol': ?protocol,
      'region': ?region,
      'secretKey': ?secretKey,
      'secureTransport': ?secureTransport,
      'securityToken': ?securityToken,
      'securityTransport': ?securityTransport,
      'sharedCredentialsFile': ?sharedCredentialsFile,
      'signVersion': ?pulumi.Input.mapOptionalInputValue<ProviderSignVersion, Map<String, dynamic>>(signVersion, (value) => value.toMap()),
      'skipRegionValidation': ?skipRegionValidation,
      'sourceIp': ?sourceIp,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessKey: map['accessKey'] == null ? null : (map['accessKey'] as String).input(),
      accountId: map['accountId'] == null ? null : (map['accountId'] as String).input(),
      accountType: map['accountType'] == null ? null : (map['accountType'] as String).input(),
      assumeRole: map['assumeRole'] == null ? null : (ProviderAssumeRole.fromMap((map['assumeRole'] as Map).cast<String, dynamic>())).input(),
      assumeRoleWithOidc: map['assumeRoleWithOidc'] == null ? null : (ProviderAssumeRoleWithOidc.fromMap((map['assumeRoleWithOidc'] as Map).cast<String, dynamic>())).input(),
      clientConnectTimeout: map['clientConnectTimeout'] == null ? null : (map['clientConnectTimeout'] as int).input(),
      clientReadTimeout: map['clientReadTimeout'] == null ? null : (map['clientReadTimeout'] as int).input(),
      configurationSource: map['configurationSource'] == null ? null : (map['configurationSource'] as String).input(),
      credentialsUri: map['credentialsUri'] == null ? null : (map['credentialsUri'] as String).input(),
      ecsRoleName: map['ecsRoleName'] == null ? null : (map['ecsRoleName'] as String).input(),
      endpoints: map['endpoints'] == null ? null : (pulumi.Input.decodeList<ProviderEndpoint>(map['endpoints'], (value) => ProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))).input(),
      fc: map['fc'] == null ? null : (map['fc'] as String).input(),
      logEndpoint: map['logEndpoint'] == null ? null : (map['logEndpoint'] as String).input(),
      maxRetryTimeout: map['maxRetryTimeout'] == null ? null : (map['maxRetryTimeout'] as int).input(),
      mnsEndpoint: map['mnsEndpoint'] == null ? null : (map['mnsEndpoint'] as String).input(),
      otsInstanceName: map['otsInstanceName'] == null ? null : (map['otsInstanceName'] as String).input(),
      profile: map['profile'] == null ? null : (map['profile'] as String).input(),
      protocol: map['protocol'] == null ? null : (map['protocol'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      secretKey: map['secretKey'] == null ? null : (map['secretKey'] as String).input(),
      secureTransport: map['secureTransport'] == null ? null : (map['secureTransport'] as String).input(),
      securityToken: map['securityToken'] == null ? null : (map['securityToken'] as String).input(),
      securityTransport: map['securityTransport'] == null ? null : (map['securityTransport'] as String).input(),
      sharedCredentialsFile: map['sharedCredentialsFile'] == null ? null : (map['sharedCredentialsFile'] as String).input(),
      signVersion: map['signVersion'] == null ? null : (ProviderSignVersion.fromMap((map['signVersion'] as Map).cast<String, dynamic>())).input(),
      skipRegionValidation: map['skipRegionValidation'] == null ? null : (map['skipRegionValidation'] as bool).input(),
      sourceIp: map['sourceIp'] == null ? null : (map['sourceIp'] as String).input(),
    );
  }
}

