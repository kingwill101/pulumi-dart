// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenersListenerXforwardedForConfig {
  /// The Custom Header Field Names Only When `xforwardedforclientcert_issuerdnenabled`, Which Evaluates to True When the Entry into Force of.
  final pulumi.Input<String> xforwardedforclientcertIssuerdnalias;

  /// Indicates Whether the `X-Forwarded-Clientcert-issuerdn` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate after the Manifests Are Signed, the Publisher Information.
  final pulumi.Input<bool> xforwardedforclientcertIssuerdnenabled;

  /// The Custom Header Field Names Only When `xforwardedforclientcertclientverifyenabled` Has a Value of True, this Value Will Not Take Effect until.The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  final pulumi.Input<String> xforwardedforclientcertclientverifyalias;

  /// Indicates Whether the `X-Forwarded-Clientcert-clientverify` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate to Verify the Results.
  final pulumi.Input<bool> xforwardedforclientcertclientverifyenabled;

  /// The Custom Header Field Names Only When `xforwardedforclientcertfingerprintenabled`, Which Evaluates to True When the Entry into Force of.The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  final pulumi.Input<String> xforwardedforclientcertfingerprintalias;

  /// Indicates Whether the `X-Forwarded-Clientcert-fingerprint` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Fingerprint Value.
  final pulumi.Input<bool> xforwardedforclientcertfingerprintenabled;

  /// The name of the custom header. This parameter is valid only if `xforwardedforclientcertsubjectdnenabled` is set to true. The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  final pulumi.Input<String> xforwardedforclientcertsubjectdnalias;

  /// Specifies whether to use the `X-Forwarded-Clientcert-subjectdn` header field to obtain information about the owner of the ALB client certificate. Valid values: true and false. Default value: false.
  final pulumi.Input<bool> xforwardedforclientcertsubjectdnenabled;

  /// Indicates Whether the X-Forwarded-Client-Port Header Field Is Used to Obtain Access to Server Load Balancer Instances to the Client, and Those of the Ports.
  final pulumi.Input<bool> xforwardedforclientsrcportenabled;

  /// Indicates whether the X-Forwarded-For header field is used to obtain the real IP address of tqhe client. Valid values: true and false. Default value: true.
  final pulumi.Input<bool> xforwardedforenabled;

  /// Indicates Whether the X-Forwarded-Proto Header Field Is Used to Obtain the Server Load Balancer Instance Snooping Protocols.
  final pulumi.Input<bool> xforwardedforprotoenabled;

  /// Indicates whether the SLB-ID header field is used to obtain the ID of the ALB instance. Valid values: true and false. Default value: false.
  final pulumi.Input<bool> xforwardedforslbidenabled;

  /// Indicates Whether the X-Forwarded-Port Header Field Is Used to Obtain the Server Load Balancer Instance Listening Port.
  final pulumi.Input<bool> xforwardedforslbportenabled;

  /// Creates a new [GetListenersListenerXforwardedForConfig].
  /// [xforwardedforclientcertIssuerdnalias] The Custom Header Field Names Only When `xforwardedforclientcert_issuerdnenabled`, Which Evaluates to True When the Entry into Force of.
  /// [xforwardedforclientcertIssuerdnenabled] Indicates Whether the `X-Forwarded-Clientcert-issuerdn` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate after the Manifests Are Signed, the Publisher Information.
  /// [xforwardedforclientcertclientverifyalias] The Custom Header Field Names Only When `xforwardedforclientcertclientverifyenabled` Has a Value of True, this Value Will Not Take Effect until.The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  /// [xforwardedforclientcertclientverifyenabled] Indicates Whether the `X-Forwarded-Clientcert-clientverify` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate to Verify the Results.
  /// [xforwardedforclientcertfingerprintalias] The Custom Header Field Names Only When `xforwardedforclientcertfingerprintenabled`, Which Evaluates to True When the Entry into Force of.The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  /// [xforwardedforclientcertfingerprintenabled] Indicates Whether the `X-Forwarded-Clientcert-fingerprint` Header Field Is Used to Obtain Access to the Server Load Balancer Instance of the Client Certificate Fingerprint Value.
  /// [xforwardedforclientcertsubjectdnalias] The name of the custom header. This parameter is valid only if `xforwardedforclientcertsubjectdnenabled` is set to true. The name must be 1 to 40 characters in length, and can contain letters, hyphens (-), underscores (_), and digits.
  /// [xforwardedforclientcertsubjectdnenabled] Specifies whether to use the `X-Forwarded-Clientcert-subjectdn` header field to obtain information about the owner of the ALB client certificate. Valid values: true and false. Default value: false.
  /// [xforwardedforclientsrcportenabled] Indicates Whether the X-Forwarded-Client-Port Header Field Is Used to Obtain Access to Server Load Balancer Instances to the Client, and Those of the Ports.
  /// [xforwardedforenabled] Indicates whether the X-Forwarded-For header field is used to obtain the real IP address of tqhe client. Valid values: true and false. Default value: true.
  /// [xforwardedforprotoenabled] Indicates Whether the X-Forwarded-Proto Header Field Is Used to Obtain the Server Load Balancer Instance Snooping Protocols.
  /// [xforwardedforslbidenabled] Indicates whether the SLB-ID header field is used to obtain the ID of the ALB instance. Valid values: true and false. Default value: false.
  /// [xforwardedforslbportenabled] Indicates Whether the X-Forwarded-Port Header Field Is Used to Obtain the Server Load Balancer Instance Listening Port.
  GetListenersListenerXforwardedForConfig({
    required this.xforwardedforclientcertIssuerdnalias,
    required this.xforwardedforclientcertIssuerdnenabled,
    required this.xforwardedforclientcertclientverifyalias,
    required this.xforwardedforclientcertclientverifyenabled,
    required this.xforwardedforclientcertfingerprintalias,
    required this.xforwardedforclientcertfingerprintenabled,
    required this.xforwardedforclientcertsubjectdnalias,
    required this.xforwardedforclientcertsubjectdnenabled,
    required this.xforwardedforclientsrcportenabled,
    required this.xforwardedforenabled,
    required this.xforwardedforprotoenabled,
    required this.xforwardedforslbidenabled,
    required this.xforwardedforslbportenabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'xforwardedforclientcertIssuerdnalias':
          xforwardedforclientcertIssuerdnalias,
      'xforwardedforclientcertIssuerdnenabled':
          xforwardedforclientcertIssuerdnenabled,
      'xforwardedforclientcertclientverifyalias':
          xforwardedforclientcertclientverifyalias,
      'xforwardedforclientcertclientverifyenabled':
          xforwardedforclientcertclientverifyenabled,
      'xforwardedforclientcertfingerprintalias':
          xforwardedforclientcertfingerprintalias,
      'xforwardedforclientcertfingerprintenabled':
          xforwardedforclientcertfingerprintenabled,
      'xforwardedforclientcertsubjectdnalias':
          xforwardedforclientcertsubjectdnalias,
      'xforwardedforclientcertsubjectdnenabled':
          xforwardedforclientcertsubjectdnenabled,
      'xforwardedforclientsrcportenabled': xforwardedforclientsrcportenabled,
      'xforwardedforenabled': xforwardedforenabled,
      'xforwardedforprotoenabled': xforwardedforprotoenabled,
      'xforwardedforslbidenabled': xforwardedforslbidenabled,
      'xforwardedforslbportenabled': xforwardedforslbportenabled,
    };
  }

  factory GetListenersListenerXforwardedForConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenersListenerXforwardedForConfig(
      xforwardedforclientcertIssuerdnalias: pulumi.Input.fromValue(
        map['xforwardedforclientcertIssuerdnalias'] as String,
      ),
      xforwardedforclientcertIssuerdnenabled: pulumi.Input.fromValue(
        map['xforwardedforclientcertIssuerdnenabled'] as bool,
      ),
      xforwardedforclientcertclientverifyalias: pulumi.Input.fromValue(
        map['xforwardedforclientcertclientverifyalias'] as String,
      ),
      xforwardedforclientcertclientverifyenabled: pulumi.Input.fromValue(
        map['xforwardedforclientcertclientverifyenabled'] as bool,
      ),
      xforwardedforclientcertfingerprintalias: pulumi.Input.fromValue(
        map['xforwardedforclientcertfingerprintalias'] as String,
      ),
      xforwardedforclientcertfingerprintenabled: pulumi.Input.fromValue(
        map['xforwardedforclientcertfingerprintenabled'] as bool,
      ),
      xforwardedforclientcertsubjectdnalias: pulumi.Input.fromValue(
        map['xforwardedforclientcertsubjectdnalias'] as String,
      ),
      xforwardedforclientcertsubjectdnenabled: pulumi.Input.fromValue(
        map['xforwardedforclientcertsubjectdnenabled'] as bool,
      ),
      xforwardedforclientsrcportenabled: pulumi.Input.fromValue(
        map['xforwardedforclientsrcportenabled'] as bool,
      ),
      xforwardedforenabled: pulumi.Input.fromValue(
        map['xforwardedforenabled'] as bool,
      ),
      xforwardedforprotoenabled: pulumi.Input.fromValue(
        map['xforwardedforprotoenabled'] as bool,
      ),
      xforwardedforslbidenabled: pulumi.Input.fromValue(
        map['xforwardedforslbidenabled'] as bool,
      ),
      xforwardedforslbportenabled: pulumi.Input.fromValue(
        map['xforwardedforslbportenabled'] as bool,
      ),
    );
  }
}
