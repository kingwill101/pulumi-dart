// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of ServiceConnectDefaults
class ServiceConnectDefaultsResponse {
  /// The namespace name or full Amazon Resource Name (ARN) of the CMAPlong namespace that's used when you create a service and don't specify a Service Connect configuration. The namespace name can include up to 1024 characters. The name is case-sensitive. The name can't include hyphens (-), tilde (~), greater than (>), less than (<), or slash (/). If you enter an existing namespace name or ARN, then that namespace will be used. Any namespace type is supported. The namespace must be in this account and this AWS Region. If you enter a new name, a CMAPlong namespace will be created. Amazon ECS creates a CMAP namespace with the 'API calls' method of instance discovery only. This instance discovery method is the 'HTTP' namespace type in the CLIlong. Other types of instance discovery aren't used by Service Connect. If you update the cluster with an empty string ``''`` for the namespace name, the cluster configuration for Service Connect is removed. Note that the namespace will remain in CMAP and must be deleted separately. For more information about CMAPlong, see [Working with Services](https://docs.aws.amazon.com/cloud-map/latest/dg/working-with-services.html) in the *Developer Guide*.
  final pulumi.Input<String>? namespace;

  /// Creates a new [ServiceConnectDefaultsResponse].
  /// [namespace] The namespace name or full Amazon Resource Name (ARN) of the CMAPlong namespace that's used when you create a service and don't specify a Service Connect configuration. The namespace name can include up to 1024 characters. The name is case-sensitive. The name can't include hyphens (-), tilde (~), greater than (>), less than (<), or slash (/). If you enter an existing namespace name or ARN, then that namespace will be used. Any namespace type is supported. The namespace must be in this account and this AWS Region. If you enter a new name, a CMAPlong namespace will be created. Amazon ECS creates a CMAP namespace with the 'API calls' method of instance discovery only. This instance discovery method is the 'HTTP' namespace type in the CLIlong. Other types of instance discovery aren't used by Service Connect. If you update the cluster with an empty string ``''`` for the namespace name, the cluster configuration for Service Connect is removed. Note that the namespace will remain in CMAP and must be deleted separately. For more information about CMAPlong, see [Working with Services](https://docs.aws.amazon.com/cloud-map/latest/dg/working-with-services.html) in the *Developer Guide*.
  ServiceConnectDefaultsResponse({
    this.namespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'namespace': ?namespace,
    };
  }

  factory ServiceConnectDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return ServiceConnectDefaultsResponse(
      namespace: map['namespace'] == null ? null : (map['namespace']! as String).input(),
    );
  }
}

