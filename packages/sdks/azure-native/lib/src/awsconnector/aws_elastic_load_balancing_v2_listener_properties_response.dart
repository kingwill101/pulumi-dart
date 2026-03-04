// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'certificate_response.dart';
import 'mutual_authentication_response.dart';

/// Definition of awsElasticLoadBalancingV2Listener
class AwsElasticLoadBalancingV2ListenerPropertiesResponse {
  /// [TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN) policy.
  final pulumi.Input<List<String>>? alpnPolicy;

  /// The default SSL server certificate for a secure listener. You must provide exactly one certificate if the listener protocol is HTTPS or TLS. To create a certificate list for a secure listener, use [AWS::ElasticLoadBalancingV2::ListenerCertificate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html).
  final pulumi.Input<List<CertificateResponse>>? certificates;

  /// The actions for the default rule. You cannot define a condition for a default rule. To create additional rules for an Application Load Balancer, use [AWS::ElasticLoadBalancingV2::ListenerRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html).
  final pulumi.Input<List<ActionResponse>>? defaultActions;

  /// Property listenerArn
  final pulumi.Input<String>? listenerArn;

  /// The Amazon Resource Name (ARN) of the load balancer.
  final pulumi.Input<String>? loadBalancerArn;

  /// The mutual authentication configuration information. Specifies the configuration information for mutual authentication.
  final pulumi.Input<MutualAuthenticationResponse>? mutualAuthentication;

  /// The port on which the load balancer is listening. You cannot specify a port for a Gateway Load Balancer.
  final pulumi.Input<int>? port;

  /// The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
  final pulumi.Input<String>? protocol;

  /// [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. Updating the security policy can result in interruptions if the load balancer is handling a high volume of traffic. For more information, see [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies) in the *Application Load Balancers Guide* and [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies) in the *Network Load Balancers Guide*.
  final pulumi.Input<String>? sslPolicy;

  /// Creates a new [AwsElasticLoadBalancingV2ListenerPropertiesResponse].
  /// [alpnPolicy] [TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN) policy.
  /// [certificates] The default SSL server certificate for a secure listener. You must provide exactly one certificate if the listener protocol is HTTPS or TLS. To create a certificate list for a secure listener, use [AWS::ElasticLoadBalancingV2::ListenerCertificate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html).
  /// [defaultActions] The actions for the default rule. You cannot define a condition for a default rule. To create additional rules for an Application Load Balancer, use [AWS::ElasticLoadBalancingV2::ListenerRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html).
  /// [listenerArn] Property listenerArn
  /// [loadBalancerArn] The Amazon Resource Name (ARN) of the load balancer.
  /// [mutualAuthentication] The mutual authentication configuration information. Specifies the configuration information for mutual authentication.
  /// [port] The port on which the load balancer is listening. You cannot specify a port for a Gateway Load Balancer.
  /// [protocol] The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
  /// [sslPolicy] [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. Updating the security policy can result in interruptions if the load balancer is handling a high volume of traffic. For more information, see [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies) in the *Application Load Balancers Guide* and [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies) in the *Network Load Balancers Guide*.
  AwsElasticLoadBalancingV2ListenerPropertiesResponse({
    this.alpnPolicy,
    this.certificates,
    this.defaultActions,
    this.listenerArn,
    this.loadBalancerArn,
    this.mutualAuthentication,
    this.port,
    this.protocol,
    this.sslPolicy,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'alpnPolicy': ?alpnPolicy,
      'certificates':
          ?pulumi.Input.mapOptionalInputValue<
            List<CertificateResponse>,
            List<Map<String, dynamic>>
          >(
            certificates,
            (value) =>
                pulumi.Input.encodeList<
                  CertificateResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'defaultActions':
          ?pulumi.Input.mapOptionalInputValue<
            List<ActionResponse>,
            List<Map<String, dynamic>>
          >(
            defaultActions,
            (value) =>
                pulumi.Input.encodeList<ActionResponse, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'listenerArn': ?listenerArn,
      'loadBalancerArn': ?loadBalancerArn,
      'mutualAuthentication':
          ?pulumi.Input.mapOptionalInputValue<
            MutualAuthenticationResponse,
            Map<String, dynamic>
          >(mutualAuthentication, (value) => value.toMap()),
      'port': ?port,
      'protocol': ?protocol,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory AwsElasticLoadBalancingV2ListenerPropertiesResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return AwsElasticLoadBalancingV2ListenerPropertiesResponse(
      alpnPolicy: (() {
        final guardedValue = map['alpnPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      certificates: (() {
        final guardedValue = map['certificates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<CertificateResponse>(
            guardedValue,
            (value) => CertificateResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      defaultActions: (() {
        final guardedValue = map['defaultActions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<ActionResponse>(
            guardedValue,
            (value) =>
                ActionResponse.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      listenerArn: (() {
        final guardedValue = map['listenerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      loadBalancerArn: (() {
        final guardedValue = map['loadBalancerArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mutualAuthentication: (() {
        final guardedValue = map['mutualAuthentication'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          MutualAuthenticationResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      port: (() {
        final guardedValue = map['port'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as int);
      })(),
      protocol: (() {
        final guardedValue = map['protocol'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      sslPolicy: (() {
        final guardedValue = map['sslPolicy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
