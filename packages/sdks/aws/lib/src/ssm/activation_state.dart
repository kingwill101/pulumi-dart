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
    pulumi.Output<String>? activationCode,
    pulumi.Output<String>? description,
    pulumi.Output<String>? expirationDate,
    pulumi.Output<bool>? expired,
    pulumi.Output<String>? iamRole,
    pulumi.Output<String>? name,
    pulumi.Output<String>? region,
    pulumi.Output<int>? registrationCount,
    pulumi.Output<int>? registrationLimit,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      activationCode = pulumi.Input.asOptionalInput<String>(activationCode),
      description = pulumi.Input.asOptionalInput<String>(description),
      expirationDate = pulumi.Input.asOptionalInput<String>(expirationDate),
      expired = pulumi.Input.asOptionalInput<bool>(expired),
      iamRole = pulumi.Input.asOptionalInput<String>(iamRole),
      name = pulumi.Input.asOptionalInput<String>(name),
      region = pulumi.Input.asOptionalInput<String>(region),
      registrationCount = pulumi.Input.asOptionalInput<int>(registrationCount),
      registrationLimit = pulumi.Input.asOptionalInput<int>(registrationLimit),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

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
      activationCode: map['activationCode'] == null ? null : pulumi.Output.create<String>(map['activationCode'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      expirationDate: map['expirationDate'] == null ? null : pulumi.Output.create<String>(map['expirationDate'] as String),
      expired: map['expired'] == null ? null : pulumi.Output.create<bool>(map['expired'] as bool),
      iamRole: map['iamRole'] == null ? null : pulumi.Output.create<String>(map['iamRole'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      registrationCount: map['registrationCount'] == null ? null : pulumi.Output.create<int>(map['registrationCount'] as int),
      registrationLimit: map['registrationLimit'] == null ? null : pulumi.Output.create<int>(map['registrationLimit'] as int),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

