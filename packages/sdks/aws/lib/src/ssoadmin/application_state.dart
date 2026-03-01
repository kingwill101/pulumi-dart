// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_portal_options.dart';

/// Input properties used for looking up and filtering Application resources.
class ApplicationState {
  /// AWS account ID.
  final pulumi.Input<String>? applicationAccount;
  /// (**Deprecated** Reference `arn` instead) ARN of the application.
  final pulumi.Input<String>? applicationArn;
  /// ARN of the application provider.
  final pulumi.Input<String>? applicationProviderArn;
  /// ARN of the application.
  final pulumi.Input<String>? arn;
  /// A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  final pulumi.Input<String>? clientToken;
  /// Description of the application.
  final pulumi.Input<String>? description;
  /// ARN of the instance of IAM Identity Center.
  final pulumi.Input<String>? instanceArn;
  /// Name of the application.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String>? name;
  /// Options for the portal associated with an application. See `portal_options` below.
  final pulumi.Input<ApplicationPortalOptions>? portalOptions;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Status of the application. Valid values are `ENABLED` and `DISABLED`.
  final pulumi.Input<String>? status;
  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [ApplicationState].
  /// [applicationAccount] AWS account ID.
  /// [applicationArn] (**Deprecated** Reference `arn` instead) ARN of the application.
  /// [applicationProviderArn] ARN of the application provider.
  /// [arn] ARN of the application.
  /// [clientToken] A unique, case-sensitive ID that you provide to ensure the idempotency of the request. AWS generates a random value when not provided.
  /// [description] Description of the application.
  /// [instanceArn] ARN of the instance of IAM Identity Center.
  /// [name] Name of the application.
  /// [portalOptions] Options for the portal associated with an application. See `portal_options` below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [status] Status of the application. Valid values are `ENABLED` and `DISABLED`.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  ApplicationState({
    pulumi.Output<String>? applicationAccount,
    pulumi.Output<String>? applicationArn,
    pulumi.Output<String>? applicationProviderArn,
    pulumi.Output<String>? arn,
    pulumi.Output<String>? clientToken,
    pulumi.Output<String>? description,
    pulumi.Output<String>? instanceArn,
    pulumi.Output<String>? name,
    pulumi.Output<ApplicationPortalOptions>? portalOptions,
    pulumi.Output<String>? region,
    pulumi.Output<String>? status,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      applicationAccount = pulumi.Input.asOptionalInput<String>(applicationAccount),
      applicationArn = pulumi.Input.asOptionalInput<String>(applicationArn),
      applicationProviderArn = pulumi.Input.asOptionalInput<String>(applicationProviderArn),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      clientToken = pulumi.Input.asOptionalInput<String>(clientToken),
      description = pulumi.Input.asOptionalInput<String>(description),
      instanceArn = pulumi.Input.asOptionalInput<String>(instanceArn),
      name = pulumi.Input.asOptionalInput<String>(name),
      portalOptions = pulumi.Input.asOptionalInput<ApplicationPortalOptions>(portalOptions),
      region = pulumi.Input.asOptionalInput<String>(region),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationAccount': ?applicationAccount,
      'applicationArn': ?applicationArn,
      'applicationProviderArn': ?applicationProviderArn,
      'arn': ?arn,
      'clientToken': ?clientToken,
      'description': ?description,
      'instanceArn': ?instanceArn,
      'name': ?name,
      'portalOptions': ?pulumi.Input.mapOptionalInputValue<ApplicationPortalOptions, Map<String, dynamic>>(portalOptions, (value) => value.toMap()),
      'region': ?region,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory ApplicationState.fromMap(Map<String, dynamic> map) {
    return ApplicationState(
      applicationAccount: map['applicationAccount'] == null ? null : pulumi.Output.create<String>(map['applicationAccount'] as String),
      applicationArn: map['applicationArn'] == null ? null : pulumi.Output.create<String>(map['applicationArn'] as String),
      applicationProviderArn: map['applicationProviderArn'] == null ? null : pulumi.Output.create<String>(map['applicationProviderArn'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      clientToken: map['clientToken'] == null ? null : pulumi.Output.create<String>(map['clientToken'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      instanceArn: map['instanceArn'] == null ? null : pulumi.Output.create<String>(map['instanceArn'] as String),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      portalOptions: map['portalOptions'] == null ? null : pulumi.Output.create<ApplicationPortalOptions>(ApplicationPortalOptions.fromMap((map['portalOptions'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

