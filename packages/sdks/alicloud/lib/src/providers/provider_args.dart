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
      'assumeRole':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderAssumeRole,
            Map<String, dynamic>
          >(assumeRole, (value) => value.toMap()),
      'assumeRoleWithOidc':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderAssumeRoleWithOidc,
            Map<String, dynamic>
          >(assumeRoleWithOidc, (value) => value.toMap()),
      'clientConnectTimeout': ?clientConnectTimeout,
      'clientReadTimeout': ?clientReadTimeout,
      'configurationSource': ?configurationSource,
      'credentialsUri': ?credentialsUri,
      'ecsRoleName': ?ecsRoleName,
      'endpoints':
          ?pulumi.Input.mapOptionalInputValue<
            List<ProviderEndpoint>,
            List<Map<String, dynamic>>
          >(
            endpoints,
            (value) =>
                pulumi.Input.encodeList<ProviderEndpoint, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
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
      'signVersion':
          ?pulumi.Input.mapOptionalInputValue<
            ProviderSignVersion,
            Map<String, dynamic>
          >(signVersion, (value) => value.toMap()),
      'skipRegionValidation': ?skipRegionValidation,
      'sourceIp': ?sourceIp,
    };
  }

  factory ProviderArgs.fromMap(Map<String, dynamic> map) {
    return ProviderArgs(
      accessKey: (() {
        final guardedValue = map['accessKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountId: (() {
        final guardedValue = map['accountId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      accountType: (() {
        final guardedValue = map['accountType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      assumeRole: (() {
        final guardedValue = map['assumeRole'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderAssumeRole.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      assumeRoleWithOidc: (() {
        final guardedValue = map['assumeRoleWithOidc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderAssumeRoleWithOidc.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      clientConnectTimeout: (() {
        final guardedValue = map['clientConnectTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      clientReadTimeout: (() {
        final guardedValue = map['clientReadTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      configurationSource: (() {
        final guardedValue = map['configurationSource'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      credentialsUri: (() {
        final guardedValue = map['credentialsUri'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      ecsRoleName: (() {
        final guardedValue = map['ecsRoleName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      endpoints: (() {
        final guardedValue = map['endpoints'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ProviderEndpoint>(
            guardedValue,
            (value) => ProviderEndpoint.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      fc: (() {
        final guardedValue = map['fc'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      logEndpoint: (() {
        final guardedValue = map['logEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      maxRetryTimeout: (() {
        final guardedValue = map['maxRetryTimeout'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      mnsEndpoint: (() {
        final guardedValue = map['mnsEndpoint'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      otsInstanceName: (() {
        final guardedValue = map['otsInstanceName'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      profile: (() {
        final guardedValue = map['profile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secretKey: (() {
        final guardedValue = map['secretKey'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      secureTransport: (() {
        final guardedValue = map['secureTransport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityToken: (() {
        final guardedValue = map['securityToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      securityTransport: (() {
        final guardedValue = map['securityTransport'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sharedCredentialsFile: (() {
        final guardedValue = map['sharedCredentialsFile'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      signVersion: (() {
        final guardedValue = map['signVersion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          ProviderSignVersion.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      skipRegionValidation: (() {
        final guardedValue = map['skipRegionValidation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      sourceIp: (() {
        final guardedValue = map['sourceIp'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
