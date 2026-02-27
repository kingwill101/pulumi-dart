// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_listener_default_action/get_listener_default_action_lb.dart';
import '../get_listener_mutual_authentication/get_listener_mutual_authentication_lb.dart';

/// Result data returned by getListener.
class GetListenerLbResult {
  final String alpnPolicy;
  final String arn;
  final String certificateArn;
  final List<GetListenerDefaultActionLb> defaultActions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String loadBalancerArn;
  final List<GetListenerMutualAuthenticationLb> mutualAuthentications;
  final int port;
  final String protocol;
  final String region;
  final String sslPolicy;
  final Map<String, String> tags;

  GetListenerLbResult({
    required this.alpnPolicy,
    required this.arn,
    required this.certificateArn,
    required this.defaultActions,
    required this.id,
    required this.loadBalancerArn,
    required this.mutualAuthentications,
    required this.port,
    required this.protocol,
    required this.region,
    required this.sslPolicy,
    required this.tags,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alpnPolicy'] = alpnPolicy;
    map['arn'] = arn;
    map['certificateArn'] = certificateArn;
    map['defaultActions'] = pulumi.Input.encodeList<GetListenerDefaultActionLb,
        Map<String, dynamic>>(defaultActions, (value) => value.toMap());
    map['id'] = id;
    map['loadBalancerArn'] = loadBalancerArn;
    map['mutualAuthentications'] = pulumi.Input.encodeList<
        GetListenerMutualAuthenticationLb,
        Map<String, dynamic>>(mutualAuthentications, (value) => value.toMap());
    map['port'] = port;
    map['protocol'] = protocol;
    map['region'] = region;
    map['sslPolicy'] = sslPolicy;
    map['tags'] = tags;
    return map;
  }

  factory GetListenerLbResult.fromMap(Map<String, dynamic> map) {
    return GetListenerLbResult(
      alpnPolicy: map['alpnPolicy'] as String,
      arn: map['arn'] as String,
      certificateArn: map['certificateArn'] as String,
      defaultActions: pulumi.Input.decodeList<GetListenerDefaultActionLb>(
          map['defaultActions'],
          (value) => GetListenerDefaultActionLb.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loadBalancerArn: map['loadBalancerArn'] as String,
      mutualAuthentications:
          pulumi.Input.decodeList<GetListenerMutualAuthenticationLb>(
              map['mutualAuthentications'],
              (value) => GetListenerMutualAuthenticationLb.fromMap(
                  (value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      sslPolicy: map['sslPolicy'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
