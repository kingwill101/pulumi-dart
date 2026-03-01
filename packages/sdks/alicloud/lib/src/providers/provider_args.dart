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
    pulumi.Output<String>? accessKey,
    pulumi.Output<String>? accountId,
    pulumi.Output<String>? accountType,
    pulumi.Output<ProviderAssumeRole>? assumeRole,
    pulumi.Output<ProviderAssumeRoleWithOidc>? assumeRoleWithOidc,
    pulumi.Output<int>? clientConnectTimeout,
    pulumi.Output<int>? clientReadTimeout,
    pulumi.Output<String>? configurationSource,
    pulumi.Output<String>? credentialsUri,
    pulumi.Output<String>? ecsRoleName,
    pulumi.Output<List<ProviderEndpoint>>? endpoints,
    pulumi.Output<String>? fc,
    pulumi.Output<String>? logEndpoint,
    pulumi.Output<int>? maxRetryTimeout,
    pulumi.Output<String>? mnsEndpoint,
    pulumi.Output<String>? otsInstanceName,
    pulumi.Output<String>? profile,
    pulumi.Output<String>? protocol,
    pulumi.Output<String>? region,
    pulumi.Output<String>? secretKey,
    pulumi.Output<String>? secureTransport,
    pulumi.Output<String>? securityToken,
    pulumi.Output<String>? securityTransport,
    pulumi.Output<String>? sharedCredentialsFile,
    pulumi.Output<ProviderSignVersion>? signVersion,
    pulumi.Output<bool>? skipRegionValidation,
    pulumi.Output<String>? sourceIp,
  }) :
      accessKey = pulumi.Input.asOptionalInput<String>(accessKey),
      accountId = pulumi.Input.asOptionalInput<String>(accountId),
      accountType = pulumi.Input.asOptionalInput<String>(accountType),
      assumeRole = pulumi.Input.asOptionalInput<ProviderAssumeRole>(assumeRole),
      assumeRoleWithOidc = pulumi.Input.asOptionalInput<ProviderAssumeRoleWithOidc>(assumeRoleWithOidc),
      clientConnectTimeout = pulumi.Input.asOptionalInput<int>(clientConnectTimeout),
      clientReadTimeout = pulumi.Input.asOptionalInput<int>(clientReadTimeout),
      configurationSource = pulumi.Input.asOptionalInput<String>(configurationSource),
      credentialsUri = pulumi.Input.asOptionalInput<String>(credentialsUri),
      ecsRoleName = pulumi.Input.asOptionalInput<String>(ecsRoleName),
      endpoints = pulumi.Input.asOptionalInput<List<ProviderEndpoint>>(endpoints),
      fc = pulumi.Input.asOptionalInput<String>(fc),
      logEndpoint = pulumi.Input.asOptionalInput<String>(logEndpoint),
      maxRetryTimeout = pulumi.Input.asOptionalInput<int>(maxRetryTimeout),
      mnsEndpoint = pulumi.Input.asOptionalInput<String>(mnsEndpoint),
      otsInstanceName = pulumi.Input.asOptionalInput<String>(otsInstanceName),
      profile = pulumi.Input.asOptionalInput<String>(profile),
      protocol = pulumi.Input.asOptionalInput<String>(protocol),
      region = pulumi.Input.asOptionalInput<String>(region),
      secretKey = pulumi.Input.asOptionalInput<String>(secretKey),
      secureTransport = pulumi.Input.asOptionalInput<String>(secureTransport),
      securityToken = pulumi.Input.asOptionalInput<String>(securityToken),
      securityTransport = pulumi.Input.asOptionalInput<String>(securityTransport),
      sharedCredentialsFile = pulumi.Input.asOptionalInput<String>(sharedCredentialsFile),
      signVersion = pulumi.Input.asOptionalInput<ProviderSignVersion>(signVersion),
      skipRegionValidation = pulumi.Input.asOptionalInput<bool>(skipRegionValidation),
      sourceIp = pulumi.Input.asOptionalInput<String>(sourceIp);

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
      accessKey: map['accessKey'] == null ? null : pulumi.Output.create<String>(map['accessKey'] as String),
      accountId: map['accountId'] == null ? null : pulumi.Output.create<String>(map['accountId'] as String),
      accountType: map['accountType'] == null ? null : pulumi.Output.create<String>(map['accountType'] as String),
      assumeRole: map['assumeRole'] == null ? null : pulumi.Output.create<ProviderAssumeRole>(ProviderAssumeRole.fromMap((map['assumeRole'] as Map).cast<String, dynamic>())),
      assumeRoleWithOidc: map['assumeRoleWithOidc'] == null ? null : pulumi.Output.create<ProviderAssumeRoleWithOidc>(ProviderAssumeRoleWithOidc.fromMap((map['assumeRoleWithOidc'] as Map).cast<String, dynamic>())),
      clientConnectTimeout: map['clientConnectTimeout'] == null ? null : pulumi.Output.create<int>(map['clientConnectTimeout'] as int),
      clientReadTimeout: map['clientReadTimeout'] == null ? null : pulumi.Output.create<int>(map['clientReadTimeout'] as int),
      configurationSource: map['configurationSource'] == null ? null : pulumi.Output.create<String>(map['configurationSource'] as String),
      credentialsUri: map['credentialsUri'] == null ? null : pulumi.Output.create<String>(map['credentialsUri'] as String),
      ecsRoleName: map['ecsRoleName'] == null ? null : pulumi.Output.create<String>(map['ecsRoleName'] as String),
      endpoints: map['endpoints'] == null ? null : pulumi.Output.create<List<ProviderEndpoint>>(pulumi.Input.decodeList<ProviderEndpoint>(map['endpoints'], (value) => ProviderEndpoint.fromMap((value as Map).cast<String, dynamic>()))),
      fc: map['fc'] == null ? null : pulumi.Output.create<String>(map['fc'] as String),
      logEndpoint: map['logEndpoint'] == null ? null : pulumi.Output.create<String>(map['logEndpoint'] as String),
      maxRetryTimeout: map['maxRetryTimeout'] == null ? null : pulumi.Output.create<int>(map['maxRetryTimeout'] as int),
      mnsEndpoint: map['mnsEndpoint'] == null ? null : pulumi.Output.create<String>(map['mnsEndpoint'] as String),
      otsInstanceName: map['otsInstanceName'] == null ? null : pulumi.Output.create<String>(map['otsInstanceName'] as String),
      profile: map['profile'] == null ? null : pulumi.Output.create<String>(map['profile'] as String),
      protocol: map['protocol'] == null ? null : pulumi.Output.create<String>(map['protocol'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      secretKey: map['secretKey'] == null ? null : pulumi.Output.create<String>(map['secretKey'] as String),
      secureTransport: map['secureTransport'] == null ? null : pulumi.Output.create<String>(map['secureTransport'] as String),
      securityToken: map['securityToken'] == null ? null : pulumi.Output.create<String>(map['securityToken'] as String),
      securityTransport: map['securityTransport'] == null ? null : pulumi.Output.create<String>(map['securityTransport'] as String),
      sharedCredentialsFile: map['sharedCredentialsFile'] == null ? null : pulumi.Output.create<String>(map['sharedCredentialsFile'] as String),
      signVersion: map['signVersion'] == null ? null : pulumi.Output.create<ProviderSignVersion>(ProviderSignVersion.fromMap((map['signVersion'] as Map).cast<String, dynamic>())),
      skipRegionValidation: map['skipRegionValidation'] == null ? null : pulumi.Output.create<bool>(map['skipRegionValidation'] as bool),
      sourceIp: map['sourceIp'] == null ? null : pulumi.Output.create<String>(map['sourceIp'] as String),
    );
  }
}

