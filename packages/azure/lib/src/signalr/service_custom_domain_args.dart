// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_signalr_service_custom_domain_service_custom_domain_args_doc}
/// The set of arguments for ServiceCustomDomain.
/// {@endtemplate}
/// {@macro pulumi_signalr_service_custom_domain_service_custom_domain_args_doc}
class ServiceCustomDomainArgs {
  /// Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Please ensure the custom domain name is included in the Subject Alternative Names of the selected SignalR Custom Certificate.
  final pulumi.Input<String> domainName;
  /// Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> signalrCustomCertificateId;
  /// Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  final pulumi.Input<String> signalrServiceId;

  /// Creates a new [ServiceCustomDomainArgs].
  /// [domainName] Specifies the custom domain name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [signalrCustomCertificateId] Specifies the SignalR Custom Certificate ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  /// [signalrServiceId] Specifies the SignalR ID of the SignalR Custom Domain. Changing this forces a new resource to be created.
  ServiceCustomDomainArgs({
    required String domainName,
    String? name,
    required String signalrCustomCertificateId,
    required String signalrServiceId,
  }) :
      domainName = pulumi.Input.asInput<String>(domainName),
      name = pulumi.Input.asOptionalInput<String>(name),
      signalrCustomCertificateId = pulumi.Input.asInput<String>(signalrCustomCertificateId),
      signalrServiceId = pulumi.Input.asInput<String>(signalrServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'domainName': domainName,
      'name': ?name,
      'signalrCustomCertificateId': signalrCustomCertificateId,
      'signalrServiceId': signalrServiceId,
    };
  }

  factory ServiceCustomDomainArgs.fromMap(Map<String, dynamic> map) {
    return ServiceCustomDomainArgs(
      domainName: map['domainName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      signalrCustomCertificateId: map['signalrCustomCertificateId'] as String,
      signalrServiceId: map['signalrServiceId'] as String,
    );
  }
}

