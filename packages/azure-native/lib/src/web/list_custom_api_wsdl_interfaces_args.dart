// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'wsdl_service.dart';

/// {@template pulumi_web_list_custom_api_wsdl_interfaces_args_doc}
/// Arguments for listCustomApiWsdlInterfaces.
/// {@endtemplate}
/// {@macro pulumi_web_list_custom_api_wsdl_interfaces_args_doc}
class ListCustomApiWsdlInterfacesArgs {
  /// The WSDL content
  final pulumi.Input<String>? content;
  /// The WSDL import method
  final pulumi.Input<String>? importMethod;
  /// The location
  final pulumi.Input<String> location;
  /// The service with name and endpoint names
  final pulumi.Input<WsdlService>? service;
  /// Subscription Id
  final pulumi.Input<String>? subscriptionId;
  /// The WSDL URL
  final pulumi.Input<String>? url;

  /// Creates a new [ListCustomApiWsdlInterfacesArgs].
  /// [content] The WSDL content
  /// [importMethod] The WSDL import method
  /// [location] The location
  /// [service] The service with name and endpoint names
  /// [subscriptionId] Subscription Id
  /// [url] The WSDL URL
  ListCustomApiWsdlInterfacesArgs({
    String? content,
    String? importMethod,
    required String location,
    WsdlService? service,
    String? subscriptionId,
    String? url,
  }) :
      content = pulumi.Input.asOptionalInput<String>(content),
      importMethod = pulumi.Input.asOptionalInput<String>(importMethod),
      location = pulumi.Input.asInput<String>(location),
      service = pulumi.Input.asOptionalInput<WsdlService>(service),
      subscriptionId = pulumi.Input.asOptionalInput<String>(subscriptionId),
      url = pulumi.Input.asOptionalInput<String>(url);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'content': ?content,
      'importMethod': ?importMethod,
      'location': location,
      'service': ?pulumi.Input.mapOptionalInputValue<WsdlService, Map<String, dynamic>>(service, (value) => value.toMap()),
      'subscriptionId': ?subscriptionId,
      'url': ?url,
    };
  }

  factory ListCustomApiWsdlInterfacesArgs.fromMap(Map<String, dynamic> map) {
    return ListCustomApiWsdlInterfacesArgs(
      content: map['content'] == null ? null : map['content'] as String,
      importMethod: map['importMethod'] == null ? null : map['importMethod'] as String,
      location: map['location'] as String,
      service: map['service'] == null ? null : WsdlService.fromMap((map['service'] as Map).cast<String, dynamic>()),
      subscriptionId: map['subscriptionId'] == null ? null : map['subscriptionId'] as String,
      url: map['url'] == null ? null : map['url'] as String,
    );
  }
}

