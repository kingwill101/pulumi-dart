// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_listener_default_action/get_listener_default_action2.dart';
import '../get_listener_mutual_authentication/get_listener_mutual_authentication2.dart';

/// Result data returned by getListener.
class GetListenerResult2 {
  final String alpnPolicy;
  final String arn;
  final String certificateArn;
  final List<GetListenerDefaultAction2> defaultActions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String loadBalancerArn;
  final List<GetListenerMutualAuthentication2> mutualAuthentications;
  final int port;
  final String protocol;
  final String region;
  final String sslPolicy;
  final Map<String, String> tags;

  GetListenerResult2({
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
    map['defaultActions'] =
        Input.encodeList<GetListenerDefaultAction2, Map<String, dynamic>>(
            defaultActions, (value) => value.toMap());
    map['id'] = id;
    map['loadBalancerArn'] = loadBalancerArn;
    map['mutualAuthentications'] = Input.encodeList<
        GetListenerMutualAuthentication2,
        Map<String, dynamic>>(mutualAuthentications, (value) => value.toMap());
    map['port'] = port;
    map['protocol'] = protocol;
    map['region'] = region;
    map['sslPolicy'] = sslPolicy;
    map['tags'] = tags;
    return map;
  }

  factory GetListenerResult2.fromMap(Map<String, dynamic> map) {
    return GetListenerResult2(
      alpnPolicy: map['alpnPolicy'] as String,
      arn: map['arn'] as String,
      certificateArn: map['certificateArn'] as String,
      defaultActions: Input.decodeList<GetListenerDefaultAction2>(
          map['defaultActions'],
          (value) => GetListenerDefaultAction2.fromMap(
              (value as Map).cast<String, dynamic>())),
      id: map['id'] as String,
      loadBalancerArn: map['loadBalancerArn'] as String,
      mutualAuthentications: Input.decodeList<GetListenerMutualAuthentication2>(
          map['mutualAuthentications'],
          (value) => GetListenerMutualAuthentication2.fromMap(
              (value as Map).cast<String, dynamic>())),
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      sslPolicy: map['sslPolicy'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
