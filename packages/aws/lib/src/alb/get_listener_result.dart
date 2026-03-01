// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_listener_default_action.dart';
import 'get_listener_mutual_authentication.dart';

/// Result data returned by getListener.
class GetListenerResult {
  final String alpnPolicy;
  final String arn;
  final String certificateArn;
  final List<GetListenerDefaultAction> defaultActions;

  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final String loadBalancerArn;
  final List<GetListenerMutualAuthentication> mutualAuthentications;
  final int port;
  final String protocol;
  final String region;
  final String sslPolicy;
  final Map<String, String> tags;

  /// Creates a new [GetListenerResult].
  /// [alpnPolicy] Required.
  /// [arn] Required.
  /// [certificateArn] Required.
  /// [defaultActions] Required.
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [loadBalancerArn] Required.
  /// [mutualAuthentications] Required.
  /// [port] Required.
  /// [protocol] Required.
  /// [region] Required.
  /// [sslPolicy] Required.
  /// [tags] Required.
  GetListenerResult({
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
    return <String, dynamic>{
      'alpnPolicy': alpnPolicy,
      'arn': arn,
      'certificateArn': certificateArn,
      'defaultActions':
          pulumi.Input.encodeList<
            GetListenerDefaultAction,
            Map<String, dynamic>
          >(defaultActions, (value) => value.toMap()),
      'id': id,
      'loadBalancerArn': loadBalancerArn,
      'mutualAuthentications':
          pulumi.Input.encodeList<
            GetListenerMutualAuthentication,
            Map<String, dynamic>
          >(mutualAuthentications, (value) => value.toMap()),
      'port': port,
      'protocol': protocol,
      'region': region,
      'sslPolicy': sslPolicy,
      'tags': tags,
    };
  }

  factory GetListenerResult.fromMap(Map<String, dynamic> map) {
    return GetListenerResult(
      alpnPolicy: map['alpnPolicy'] as String,
      arn: map['arn'] as String,
      certificateArn: map['certificateArn'] as String,
      defaultActions: pulumi.Input.decodeList<GetListenerDefaultAction>(
        map['defaultActions'],
        (value) => GetListenerDefaultAction.fromMap(
          (value as Map).cast<String, dynamic>(),
        ),
      ),
      id: map['id'] as String,
      loadBalancerArn: map['loadBalancerArn'] as String,
      mutualAuthentications:
          pulumi.Input.decodeList<GetListenerMutualAuthentication>(
            map['mutualAuthentications'],
            (value) => GetListenerMutualAuthentication.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      port: map['port'] as int,
      protocol: map['protocol'] as String,
      region: map['region'] as String,
      sslPolicy: map['sslPolicy'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
    );
  }
}
