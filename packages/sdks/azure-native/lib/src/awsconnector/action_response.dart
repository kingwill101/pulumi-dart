// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'authenticate_cognito_config_response.dart';
import 'authenticate_oidc_config_response.dart';
import 'fixed_response_config_response.dart';
import 'forward_config_response.dart';
import 'redirect_config_response.dart';

/// Definition of Action
class ActionResponse {
  /// [HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only when ``Type`` is ``authenticate-cognito``. Specifies information required when integrating with Amazon Cognito to authenticate users.
  final pulumi.Input<AuthenticateCognitoConfigResponse?>? authenticateCognitoConfig;
  /// [HTTPS listeners] Information about an identity provider that is compliant with OpenID Connect (OIDC). Specify only when ``Type`` is ``authenticate-oidc``. Specifies information required using an identity provide (IdP) that is compliant with OpenID Connect (OIDC) to authenticate users.
  final pulumi.Input<AuthenticateOidcConfigResponse?>? authenticateOidcConfig;
  /// [Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when ``Type`` is ``fixed-response``. Specifies information required when returning a custom HTTP response.
  final pulumi.Input<FixedResponseConfigResponse?>? fixedResponseConfig;
  /// Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when ``Type`` is ``forward``. If you specify both ``ForwardConfig`` and ``TargetGroupArn``, you can specify only one target group using ``ForwardConfig`` and it must be the same target group specified in ``TargetGroupArn``. Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when ``Type`` is ``forward``. If you specify both ``ForwardConfig`` and ``TargetGroupArn``, you can specify only one target group using ``ForwardConfig`` and it must be the same target group specified in ``TargetGroupArn``.
  final pulumi.Input<ForwardConfigResponse?>? forwardConfig;
  /// The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first.
  final pulumi.Input<int?>? order;
  /// [Application Load Balancer] Information for creating a redirect action. Specify only when ``Type`` is ``redirect``. Information about a redirect action. A URI consists of the following components: protocol://hostname:port/path?query. You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path. Any components that you do not modify retain their original values. You can reuse URI components using the following reserved keywords:  +  #{protocol}  +  #{host}  +  #{port}  +  #{path} (the leading '/' is removed)  +  #{query}   For example, you can change the path to '/new/#{path}', the hostname to 'example.#{host}', or the query to '#{query}&value=xyz'.
  final pulumi.Input<RedirectConfigResponse?>? redirectConfig;
  /// The Amazon Resource Name (ARN) of the target group. Specify only when ``Type`` is ``forward`` and you want to route to a single target group. To route to one or more target groups, use ``ForwardConfig`` instead.
  final pulumi.Input<String?>? targetGroupArn;
  /// The type of action.
  final pulumi.Input<String?>? type;

  /// Creates a new [ActionResponse].
  /// [authenticateCognitoConfig] [HTTPS listeners] Information for using Amazon Cognito to authenticate users. Specify only when ``Type`` is ``authenticate-cognito``. Specifies information required when integrating with Amazon Cognito to authenticate users.
  /// [authenticateOidcConfig] [HTTPS listeners] Information about an identity provider that is compliant with OpenID Connect (OIDC). Specify only when ``Type`` is ``authenticate-oidc``. Specifies information required using an identity provide (IdP) that is compliant with OpenID Connect (OIDC) to authenticate users.
  /// [fixedResponseConfig] [Application Load Balancer] Information for creating an action that returns a custom HTTP response. Specify only when ``Type`` is ``fixed-response``. Specifies information required when returning a custom HTTP response.
  /// [forwardConfig] Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when ``Type`` is ``forward``. If you specify both ``ForwardConfig`` and ``TargetGroupArn``, you can specify only one target group using ``ForwardConfig`` and it must be the same target group specified in ``TargetGroupArn``. Information for creating an action that distributes requests among one or more target groups. For Network Load Balancers, you can specify a single target group. Specify only when ``Type`` is ``forward``. If you specify both ``ForwardConfig`` and ``TargetGroupArn``, you can specify only one target group using ``ForwardConfig`` and it must be the same target group specified in ``TargetGroupArn``.
  /// [order] The order for the action. This value is required for rules with multiple actions. The action with the lowest value for order is performed first.
  /// [redirectConfig] [Application Load Balancer] Information for creating a redirect action. Specify only when ``Type`` is ``redirect``. Information about a redirect action. A URI consists of the following components: protocol://hostname:port/path?query. You must modify at least one of the following components to avoid a redirect loop: protocol, hostname, port, or path. Any components that you do not modify retain their original values. You can reuse URI components using the following reserved keywords:  +  #{protocol}  +  #{host}  +  #{port}  +  #{path} (the leading '/' is removed)  +  #{query}   For example, you can change the path to '/new/#{path}', the hostname to 'example.#{host}', or the query to '#{query}&value=xyz'.
  /// [targetGroupArn] The Amazon Resource Name (ARN) of the target group. Specify only when ``Type`` is ``forward`` and you want to route to a single target group. To route to one or more target groups, use ``ForwardConfig`` instead.
  /// [type] The type of action.
  const ActionResponse({
    this.authenticateCognitoConfig,
    this.authenticateOidcConfig,
    this.fixedResponseConfig,
    this.forwardConfig,
    this.order,
    this.redirectConfig,
    this.targetGroupArn,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authenticateCognitoConfig': ?pulumi.Input.mapOptionalInputValue<AuthenticateCognitoConfigResponse, Map<String, dynamic>>(authenticateCognitoConfig, (value) => value.toMap()),
      'authenticateOidcConfig': ?pulumi.Input.mapOptionalInputValue<AuthenticateOidcConfigResponse, Map<String, dynamic>>(authenticateOidcConfig, (value) => value.toMap()),
      'fixedResponseConfig': ?pulumi.Input.mapOptionalInputValue<FixedResponseConfigResponse, Map<String, dynamic>>(fixedResponseConfig, (value) => value.toMap()),
      'forwardConfig': ?pulumi.Input.mapOptionalInputValue<ForwardConfigResponse, Map<String, dynamic>>(forwardConfig, (value) => value.toMap()),
      'order': ?order,
      'redirectConfig': ?pulumi.Input.mapOptionalInputValue<RedirectConfigResponse, Map<String, dynamic>>(redirectConfig, (value) => value.toMap()),
      'targetGroupArn': ?targetGroupArn,
      'type': ?type,
    };
  }

  factory ActionResponse.fromMap(Map<String, dynamic> map) {
    return ActionResponse(
      authenticateCognitoConfig: (() { final guardedValue = map['authenticateCognitoConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticateCognitoConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      authenticateOidcConfig: (() { final guardedValue = map['authenticateOidcConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(AuthenticateOidcConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fixedResponseConfig: (() { final guardedValue = map['fixedResponseConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FixedResponseConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      forwardConfig: (() { final guardedValue = map['forwardConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ForwardConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      order: (() { final guardedValue = map['order']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      redirectConfig: (() { final guardedValue = map['redirectConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(RedirectConfigResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      targetGroupArn: (() { final guardedValue = map['targetGroupArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
