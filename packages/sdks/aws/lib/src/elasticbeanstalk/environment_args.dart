// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_setting.dart';

/// {@template pulumi_elasticbeanstalk_environment_environment_args_doc}
/// The set of arguments for Environment.
/// {@endtemplate}
/// {@macro pulumi_elasticbeanstalk_environment_environment_args_doc}
class EnvironmentArgs {
  /// Name of the application that contains the version
  /// to be deployed
  final pulumi.Input<String> application;
  /// Prefix to use for the fully qualified DNS name of
  /// the Environment.
  final pulumi.Input<String>? cnamePrefix;
  /// Short description of the Environment
  final pulumi.Input<String>? description;
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final pulumi.Input<String>? name;
  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// to use in deployment
  final pulumi.Input<String>? platformArn;
  /// The time between polling the AWS API to
  /// check if changes have been applied. Use this to adjust the rate of API calls
  /// for any `create` or `update` action. Minimum `10s`, maximum `180s`. Omit this to
  /// use the default behavior, which is an exponential backoff
  final pulumi.Input<String>? pollInterval;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  final pulumi.Input<List<EnvironmentSetting>>? settings;
  /// A solution stack to base your environment
  /// off of. Example stacks can be found in the [Amazon API documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
  final pulumi.Input<String>? solutionStackName;
  /// A set of tags to apply to the Environment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// The name of the Elastic Beanstalk Configuration
  /// template to use in deployment
  final pulumi.Input<String>? templateName;
  /// Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// or `WebServer`. If tier is left blank `WebServer` will be used.
  final pulumi.Input<String>? tier;
  /// The name of the Elastic Beanstalk Application Version
  /// to use in deployment.
  final pulumi.Input<String>? version;
  /// The maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that this provider should
  /// wait for an Elastic Beanstalk Environment to be in a ready state before timing
  /// out.
  final pulumi.Input<String>? waitForReadyTimeout;

  /// Creates a new [EnvironmentArgs].
  /// [application] Name of the application that contains the version
  /// [cnamePrefix] Prefix to use for the fully qualified DNS name of
  /// [description] Short description of the Environment
  /// [name] A unique name for this Environment. This name is used
  /// [platformArn] The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// [pollInterval] The time between polling the AWS API to
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Option settings to configure the new Environment. These
  /// [solutionStackName] A solution stack to base your environment
  /// [tags] A set of tags to apply to the Environment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [templateName] The name of the Elastic Beanstalk Configuration
  /// [tier] Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// [version] The name of the Elastic Beanstalk Application Version
  /// [waitForReadyTimeout] The maximum
  EnvironmentArgs({
    required this.application,
    this.cnamePrefix,
    this.description,
    this.name,
    this.platformArn,
    this.pollInterval,
    this.region,
    this.settings,
    this.solutionStackName,
    this.tags,
    this.templateName,
    this.tier,
    this.version,
    this.waitForReadyTimeout,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'application': application,
      'cnamePrefix': ?cnamePrefix,
      'description': ?description,
      'name': ?name,
      'platformArn': ?platformArn,
      'pollInterval': ?pollInterval,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<EnvironmentSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionStackName': ?solutionStackName,
      'tags': ?tags,
      'templateName': ?templateName,
      'tier': ?tier,
      'version': ?version,
      'waitForReadyTimeout': ?waitForReadyTimeout,
    };
  }

  factory EnvironmentArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentArgs(
      application: (map['application'] as String).input(),
      cnamePrefix: map['cnamePrefix'] == null ? null : ((map['cnamePrefix'] as String).input()).input(),
      description: map['description'] == null ? null : ((map['description'] as String).input()).input(),
      name: map['name'] == null ? null : ((map['name'] as String).input()).input(),
      platformArn: map['platformArn'] == null ? null : ((map['platformArn'] as String).input()).input(),
      pollInterval: map['pollInterval'] == null ? null : ((map['pollInterval'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      settings: map['settings'] == null ? null : ((pulumi.Input.decodeList<EnvironmentSetting>(map['settings']!, (value) => EnvironmentSetting.fromMap((value as Map).cast<String, dynamic>()))).input()).input(),
      solutionStackName: map['solutionStackName'] == null ? null : ((map['solutionStackName'] as String).input()).input(),
      tags: map['tags'] == null ? null : (((map['tags'] as Map).cast<String, String>()).input()).input(),
      templateName: map['templateName'] == null ? null : ((map['templateName'] as String).input()).input(),
      tier: map['tier'] == null ? null : ((map['tier'] as String).input()).input(),
      version: map['version'] == null ? null : ((map['version'] as String).input()).input(),
      waitForReadyTimeout: map['waitForReadyTimeout'] == null ? null : ((map['waitForReadyTimeout'] as String).input()).input(),
    );
  }
}

