// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../environment_setting/environment_setting.dart';

/// The set of arguments for Environment.
class EnvironmentElasticbeanstalkArgs {
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

  EnvironmentElasticbeanstalkArgs({
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
    final map = <String, dynamic>{};
    map['application'] = application;
    final cnamePrefixValue = cnamePrefix;
    if (cnamePrefixValue != null) {
      map['cnamePrefix'] = cnamePrefixValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final platformArnValue = platformArn;
    if (platformArnValue != null) {
      map['platformArn'] = platformArnValue;
    }
    final pollIntervalValue = pollInterval;
    if (pollIntervalValue != null) {
      map['pollInterval'] = pollIntervalValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    final settingsValue = settings;
    if (settingsValue != null) {
      map['settings'] = pulumi.Input.mapOptionalInputValue<
              List<EnvironmentSetting>, List<Map<String, dynamic>>>(
          settingsValue,
          (value) =>
              pulumi.Input.encodeList<EnvironmentSetting, Map<String, dynamic>>(
                  value, (value) => value.toMap()));
    }
    final solutionStackNameValue = solutionStackName;
    if (solutionStackNameValue != null) {
      map['solutionStackName'] = solutionStackNameValue;
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    final templateNameValue = templateName;
    if (templateNameValue != null) {
      map['templateName'] = templateNameValue;
    }
    final tierValue = tier;
    if (tierValue != null) {
      map['tier'] = tierValue;
    }
    final versionValue = version;
    if (versionValue != null) {
      map['version'] = versionValue;
    }
    final waitForReadyTimeoutValue = waitForReadyTimeout;
    if (waitForReadyTimeoutValue != null) {
      map['waitForReadyTimeout'] = waitForReadyTimeoutValue;
    }
    return map;
  }

  factory EnvironmentElasticbeanstalkArgs.fromMap(Map<String, dynamic> map) {
    return EnvironmentElasticbeanstalkArgs(
      application: pulumi.Input.asInput<String>(map['application']),
      cnamePrefix: pulumi.Input.asOptionalInput<String>(map['cnamePrefix']),
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      platformArn: pulumi.Input.asOptionalInput<String>(map['platformArn']),
      pollInterval: pulumi.Input.asOptionalInput<String>(map['pollInterval']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      settings: pulumi.Input.asOptionalInput<List<EnvironmentSetting>>(
          map['settings']),
      solutionStackName:
          pulumi.Input.asOptionalInput<String>(map['solutionStackName']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
      templateName: pulumi.Input.asOptionalInput<String>(map['templateName']),
      tier: pulumi.Input.asOptionalInput<String>(map['tier']),
      version: pulumi.Input.asOptionalInput<String>(map['version']),
      waitForReadyTimeout:
          pulumi.Input.asOptionalInput<String>(map['waitForReadyTimeout']),
    );
  }
}
