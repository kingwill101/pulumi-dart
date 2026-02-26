// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_application_portal_option/get_application_portal_option.dart';

/// Result data returned by getApplication.
class GetApplicationResult4 {
  /// AWS account ID.
  final String applicationAccount;
  final String applicationArn;

  /// ARN of the application provider.
  final String applicationProviderArn;

  /// Description of the application.
  final String description;

  /// ARN of the application.
  final String id;

  /// ARN of the instance of IAM Identity Center.
  final String instanceArn;

  /// Name of the application.
  final String name;

  /// Options for the portal associated with an application. See the <span pulumi-lang-nodejs="`aws.ssoadmin.Application`" pulumi-lang-dotnet="`aws.ssoadmin.Application`" pulumi-lang-go="`ssoadmin.Application`" pulumi-lang-python="`ssoadmin.Application`" pulumi-lang-yaml="`aws.ssoadmin.Application`" pulumi-lang-java="`aws.ssoadmin.Application`">`aws.ssoadmin.Application`</span> resource documentation. The attributes are the same.
  final List<GetApplicationPortalOption> portalOptions;
  final String region;

  /// Status of the application.
  final String status;

  GetApplicationResult4({
    required this.applicationAccount,
    required this.applicationArn,
    required this.applicationProviderArn,
    required this.description,
    required this.id,
    required this.instanceArn,
    required this.name,
    required this.portalOptions,
    required this.region,
    required this.status,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['applicationAccount'] = applicationAccount;
    map['applicationArn'] = applicationArn;
    map['applicationProviderArn'] = applicationProviderArn;
    map['description'] = description;
    map['id'] = id;
    map['instanceArn'] = instanceArn;
    map['name'] = name;
    map['portalOptions'] =
        Input.encodeList<GetApplicationPortalOption, Map<String, dynamic>>(
            portalOptions, (value) => value.toMap());
    map['region'] = region;
    map['status'] = status;
    return map;
  }

  factory GetApplicationResult4.fromMap(Map<String, dynamic> map) {
    return GetApplicationResult4(
      applicationAccount: map['applicationAccount'] as String,
      applicationArn: map['applicationArn'] as String,
      applicationProviderArn: map['applicationProviderArn'] as String,
      description: map['description'] as String,
      id: map['id'] as String,
      instanceArn: map['instanceArn'] as String,
      name: map['name'] as String,
      portalOptions: Input.decodeList<GetApplicationPortalOption>(
          map['portalOptions'],
          (value) => GetApplicationPortalOption.fromMap(
              (value as Map).cast<String, dynamic>())),
      region: map['region'] as String,
      status: map['status'] as String,
    );
  }
}
