// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'action_response.dart';
import 'certificate_response.dart';
import 'mutual_authentication_response.dart';

/// Definition of awsElasticLoadBalancingV2Listener
class AwsElasticLoadBalancingV2ListenerPropertiesResponse {
  /// [TLS listener] The name of the Application-Layer Protocol Negotiation (ALPN) policy.
  final List<String>? alpnPolicy;
  /// The default SSL server certificate for a secure listener. You must provide exactly one certificate if the listener protocol is HTTPS or TLS. To create a certificate list for a secure listener, use [AWS::ElasticLoadBalancingV2::ListenerCertificate](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenercertificate.html).
  final List<CertificateResponse>? certificates;
  /// The actions for the default rule. You cannot define a condition for a default rule. To create additional rules for an Application Load Balancer, use [AWS::ElasticLoadBalancingV2::ListenerRule](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-elasticloadbalancingv2-listenerrule.html).
  final List<ActionResponse>? defaultActions;
  /// Property listenerArn
  final String? listenerArn;
  /// The Amazon Resource Name (ARN) of the load balancer.
  final String? loadBalancerArn;
  /// The mutual authentication configuration information. Specifies the configuration information for mutual authentication.
  final MutualAuthenticationResponse? mutualAuthentication;
  /// The port on which the load balancer is listening. You cannot specify a port for a Gateway Load Balancer.
  final int? port;
  /// The protocol for connections from clients to the load balancer. For Application Load Balancers, the supported protocols are HTTP and HTTPS. For Network Load Balancers, the supported protocols are TCP, TLS, UDP, and TCP_UDP. You can’t specify the UDP or TCP_UDP protocol if dual-stack mode is enabled. You cannot specify a protocol for a Gateway Load Balancer.
  final String? protocol;
  /// [HTTPS and TLS listeners] The security policy that defines which protocols and ciphers are supported. Updating the security policy can result in interruptions if the load balancer is handling a high volume of traffic. For more information, see [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/application/create-https-listener.html#describe-ssl-policies) in the *Application Load Balancers Guide* and [Security policies](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/create-tls-listener.html#describe-ssl-policies) in the *Network Load Balancers Guide*.
  final String? sslPolicy;

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
      'certificates': ?certificates == null ? null : pulumi.Input.encodeList<CertificateResponse, Map<String, dynamic>>(certificates!, (value) => value.toMap()),
      'defaultActions': ?defaultActions == null ? null : pulumi.Input.encodeList<ActionResponse, Map<String, dynamic>>(defaultActions!, (value) => value.toMap()),
      'listenerArn': ?listenerArn,
      'loadBalancerArn': ?loadBalancerArn,
      'mutualAuthentication': ?mutualAuthentication == null ? null : mutualAuthentication!.toMap(),
      'port': ?port,
      'protocol': ?protocol,
      'sslPolicy': ?sslPolicy,
    };
  }

  factory AwsElasticLoadBalancingV2ListenerPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return AwsElasticLoadBalancingV2ListenerPropertiesResponse(
      alpnPolicy: map['alpnPolicy'] == null ? null : (map['alpnPolicy'] as List).cast<String>(),
      certificates: map['certificates'] == null ? null : pulumi.Input.decodeList<CertificateResponse>(map['certificates'], (value) => CertificateResponse.fromMap((value as Map).cast<String, dynamic>())),
      defaultActions: map['defaultActions'] == null ? null : pulumi.Input.decodeList<ActionResponse>(map['defaultActions'], (value) => ActionResponse.fromMap((value as Map).cast<String, dynamic>())),
      listenerArn: map['listenerArn'] == null ? null : map['listenerArn'] as String,
      loadBalancerArn: map['loadBalancerArn'] == null ? null : map['loadBalancerArn'] as String,
      mutualAuthentication: map['mutualAuthentication'] == null ? null : MutualAuthenticationResponse.fromMap((map['mutualAuthentication'] as Map).cast<String, dynamic>()),
      port: map['port'] == null ? null : map['port'] as int,
      protocol: map['protocol'] == null ? null : map['protocol'] as String,
      sslPolicy: map['sslPolicy'] == null ? null : map['sslPolicy'] as String,
    );
  }
}

