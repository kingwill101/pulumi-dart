// ignore_for_file: unused_element, unnecessary_cast

import 'dart:convert';
import 'package:pulumi/pulumi.dart' as pulumi;
import 'assume_role.dart';
import 'assume_role_with_oidc.dart';
import 'endpoints.dart';
import 'sign_version.dart';

/// Configuration values for the alicloud package.
class AlicloudConfig {
  const AlicloudConfig();

  String? _raw(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.getConfig(key);
  }

  bool _isSecret(String key) {
    final deployment = pulumi.Deployment.instance;
    return deployment.isConfigSecret(key);
  }

  /// The access key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  String? get accessKey {
    final raw = _raw('accessKey');
    return raw;
  }

  bool get accessKeyIsSecret => _isSecret('accessKey');

  /// The account ID for some service API operations. You can retrieve this from the 'Security Settings' section of the Alibaba Cloud console.
  String? get accountId {
    final raw = _raw('accountId');
    return raw;
  }

  bool get accountIdIsSecret => _isSecret('accountId');

  String? get accountType {
    final raw = _raw('accountType');
    return raw;
  }

  bool get accountTypeIsSecret => _isSecret('accountType');

  AssumeRole? get assumeRole {
    final raw = _raw('assumeRole');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return AssumeRole.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get assumeRoleIsSecret => _isSecret('assumeRole');

  AssumeRoleWithOidc? get assumeRoleWithOidc {
    final raw = _raw('assumeRoleWithOidc');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return AssumeRoleWithOidc.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get assumeRoleWithOidcIsSecret => _isSecret('assumeRoleWithOidc');

  /// The maximum timeout of the client connection server.
  int? get clientConnectTimeout {
    final raw = _raw('clientConnectTimeout');
    return (raw).toInt();
  }

  bool get clientConnectTimeoutIsSecret => _isSecret('clientConnectTimeout');

  /// The maximum timeout of the client read request.
  int? get clientReadTimeout {
    final raw = _raw('clientReadTimeout');
    return (raw).toInt();
  }

  bool get clientReadTimeoutIsSecret => _isSecret('clientReadTimeout');

  String? get configurationSource {
    final raw = _raw('configurationSource');
    return raw;
  }

  bool get configurationSourceIsSecret => _isSecret('configurationSource');

  /// The URI of sidecar credentials service.
  String? get credentialsUri {
    final raw = _raw('credentialsUri');
    return raw;
  }

  bool get credentialsUriIsSecret => _isSecret('credentialsUri');

  /// The RAM Role Name attached on a ECS instance for API operations. You can retrieve this from the 'Access Control' section of the Alibaba Cloud console.
  String? get ecsRoleName {
    final raw = _raw('ecsRoleName');
    return raw;
  }

  bool get ecsRoleNameIsSecret => _isSecret('ecsRoleName');

  List<Endpoints>? get endpoints {
    final raw = _raw('endpoints');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<Endpoints>(jsonDecode(guardedValue), (value) => Endpoints.fromMap((value as Map).cast<String, dynamic>())); })();
  }

  bool get endpointsIsSecret => _isSecret('endpoints');

  String? get fc {
    final raw = _raw('fc');
    return raw;
  }

  bool get fcIsSecret => _isSecret('fc');

  String? get logEndpoint {
    final raw = _raw('logEndpoint');
    return raw;
  }

  bool get logEndpointIsSecret => _isSecret('logEndpoint');

  /// The maximum retry timeout of the request.
  int? get maxRetryTimeout {
    final raw = _raw('maxRetryTimeout');
    return (raw).toInt();
  }

  bool get maxRetryTimeoutIsSecret => _isSecret('maxRetryTimeout');

  String? get mnsEndpoint {
    final raw = _raw('mnsEndpoint');
    return raw;
  }

  bool get mnsEndpointIsSecret => _isSecret('mnsEndpoint');

  String? get otsInstanceName {
    final raw = _raw('otsInstanceName');
    return raw;
  }

  bool get otsInstanceNameIsSecret => _isSecret('otsInstanceName');

  /// The profile for API operations. If not set, the default profile created with `aliyun configure` will be used.
  String? get profile {
    final raw = _raw('profile');
    return raw;
  }

  bool get profileIsSecret => _isSecret('profile');

  String? get protocol {
    final raw = _raw('protocol');
    return raw;
  }

  bool get protocolIsSecret => _isSecret('protocol');

  /// The region where Alibaba Cloud operations will take place. Examples are cn-beijing, cn-hangzhou, eu-central-1, etc.
  String? get region {
    final raw = _raw('region');
    return raw;
  }

  bool get regionIsSecret => _isSecret('region');

  /// The secret key for API operations. You can retrieve this from the 'Security Management' section of the Alibaba Cloud console.
  String? get secretKey {
    final raw = _raw('secretKey');
    return raw;
  }

  bool get secretKeyIsSecret => _isSecret('secretKey');

  /// The security transport for the assume role invoking.
  String? get secureTransport {
    final raw = _raw('secureTransport');
    return raw;
  }

  bool get secureTransportIsSecret => _isSecret('secureTransport');

  /// security token. A security token is only required if you are using Security Token Service.
  String? get securityToken {
    final raw = _raw('securityToken');
    return raw;
  }

  bool get securityTokenIsSecret => _isSecret('securityToken');

  String? get securityTransport {
    final raw = _raw('securityTransport');
    return raw;
  }

  bool get securityTransportIsSecret => _isSecret('securityTransport');

  /// The path to the shared credentials file. If not set this defaults to ~/.aliyun/config.json
  String? get sharedCredentialsFile {
    final raw = _raw('sharedCredentialsFile');
    return raw;
  }

  bool get sharedCredentialsFileIsSecret => _isSecret('sharedCredentialsFile');

  SignVersion? get signVersion {
    final raw = _raw('signVersion');
    return (() { final guardedValue = raw; if (guardedValue == null) return null; return SignVersion.fromMap((jsonDecode(guardedValue) as Map).cast<String, dynamic>()); })();
  }

  bool get signVersionIsSecret => _isSecret('signVersion');

  /// Skip static validation of region ID. Used by users of alternative AlibabaCloud-like APIs or users w/ access to regions that are not public (yet).
  bool? get skipRegionValidation {
    final raw = _raw('skipRegionValidation');
    return (raw).toBool();
  }

  bool get skipRegionValidationIsSecret => _isSecret('skipRegionValidation');

  /// The source ip for the assume role invoking.
  String? get sourceIp {
    final raw = _raw('sourceIp');
    return raw;
  }

  bool get sourceIpIsSecret => _isSecret('sourceIp');

}

final config = AlicloudConfig();

