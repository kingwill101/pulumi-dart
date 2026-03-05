// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering Activation resources.
class ActivationState {
  /// The code the system generates when it processes the activation.
  final pulumi.Input<String>? activationCode;
  /// The description of the resource that you want to register.
  final pulumi.Input<String>? description;
  /// UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  final pulumi.Input<String>? expirationDate;
  /// If the current activation has expired.
  final pulumi.Input<bool>? expired;
  /// The IAM Role to attach to the managed instance.
  final pulumi.Input<String>? iamRole;
  /// The default name of the registered managed instance.
  final pulumi.Input<String>? name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The number of managed instances that are currently registered using this activation.
  final pulumi.Input<int>? registrationCount;
  /// The maximum number of managed instances you want to register. The default value is 1 instance.
  final pulumi.Input<int>? registrationLimit;
  /// A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ActivationState].
  /// [activationCode] The code the system generates when it processes the activation.
  /// [description] The description of the resource that you want to register.
  /// [expirationDate] UTC timestamp in [RFC3339 format](https://tools.ietf.org/html/rfc3339#section-5.8) by which this activation request should expire. The default value is 24 hours from resource creation time. This provider will only perform drift detection of its value when present in a configuration.
  /// [expired] If the current activation has expired.
  /// [iamRole] The IAM Role to attach to the managed instance.
  /// [name] The default name of the registered managed instance.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [registrationCount] The number of managed instances that are currently registered using this activation.
  /// [registrationLimit] The maximum number of managed instances you want to register. The default value is 1 instance.
  /// [tags] A map of tags to assign to the object. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ActivationState({
    this.activationCode,
    this.description,
    this.expirationDate,
    this.expired,
    this.iamRole,
    this.name,
    this.region,
    this.registrationCount,
    this.registrationLimit,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'activationCode': ?activationCode,
      'description': ?description,
      'expirationDate': ?expirationDate,
      'expired': ?expired,
      'iamRole': ?iamRole,
      'name': ?name,
      'region': ?region,
      'registrationCount': ?registrationCount,
      'registrationLimit': ?registrationLimit,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ActivationState.fromMap(Map<String, dynamic> map) {
    return ActivationState(
      activationCode: (() { final guardedValue = map['activationCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expirationDate: (() { final guardedValue = map['expirationDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      expired: (() { final guardedValue = map['expired']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      iamRole: (() { final guardedValue = map['iamRole']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registrationCount: (() { final guardedValue = map['registrationCount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      registrationLimit: (() { final guardedValue = map['registrationLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
    );
  }
}

