// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_all_setting.dart';
import 'environment_setting.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// List of all option settings configured in this Environment. These
  /// are a combination of default settings and their overrides from `setting` in
  /// the configuration.
  final pulumi.Input<List<EnvironmentAllSetting>>? allSettings;
  /// Name of the application that contains the version
  /// to be deployed
  final pulumi.Input<String>? application;
  final pulumi.Input<String>? arn;
  /// The autoscaling groups used by this Environment.
  final pulumi.Input<List<String>>? autoscalingGroups;
  /// Fully qualified DNS name for this Environment.
  final pulumi.Input<String>? cname;
  /// Prefix to use for the fully qualified DNS name of
  /// the Environment.
  final pulumi.Input<String>? cnamePrefix;
  /// Short description of the Environment
  final pulumi.Input<String>? description;
  /// The URL to the Load Balancer for this Environment
  final pulumi.Input<String>? endpointUrl;
  /// Instances used by this Environment.
  final pulumi.Input<List<String>>? instances;
  /// Launch configurations in use by this Environment.
  final pulumi.Input<List<String>>? launchConfigurations;
  /// Elastic load balancers in use by this Environment.
  final pulumi.Input<List<String>>? loadBalancers;
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
  /// SQS queues in use by this Environment.
  final pulumi.Input<List<String>>? queues;
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
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;
  /// The name of the Elastic Beanstalk Configuration
  /// template to use in deployment
  final pulumi.Input<String>? templateName;
  /// Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// or `WebServer`. If tier is left blank `WebServer` will be used.
  final pulumi.Input<String>? tier;
  /// Autoscaling triggers in use by this Environment.
  final pulumi.Input<List<String>>? triggers;
  /// The name of the Elastic Beanstalk Application Version
  /// to use in deployment.
  final pulumi.Input<String>? version;
  /// The maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that this provider should
  /// wait for an Elastic Beanstalk Environment to be in a ready state before timing
  /// out.
  final pulumi.Input<String>? waitForReadyTimeout;

  /// Creates a new [EnvironmentState].
  /// [allSettings] List of all option settings configured in this Environment. These
  /// [application] Name of the application that contains the version
  /// [arn] Optional.
  /// [autoscalingGroups] The autoscaling groups used by this Environment.
  /// [cname] Fully qualified DNS name for this Environment.
  /// [cnamePrefix] Prefix to use for the fully qualified DNS name of
  /// [description] Short description of the Environment
  /// [endpointUrl] The URL to the Load Balancer for this Environment
  /// [instances] Instances used by this Environment.
  /// [launchConfigurations] Launch configurations in use by this Environment.
  /// [loadBalancers] Elastic load balancers in use by this Environment.
  /// [name] A unique name for this Environment. This name is used
  /// [platformArn] The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// [pollInterval] The time between polling the AWS API to
  /// [queues] SQS queues in use by this Environment.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [settings] Option settings to configure the new Environment. These
  /// [solutionStackName] A solution stack to base your environment
  /// [tags] A set of tags to apply to the Environment. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  /// [templateName] The name of the Elastic Beanstalk Configuration
  /// [tier] Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// [triggers] Autoscaling triggers in use by this Environment.
  /// [version] The name of the Elastic Beanstalk Application Version
  /// [waitForReadyTimeout] The maximum
  EnvironmentState({
    pulumi.Output<List<EnvironmentAllSetting>>? allSettings,
    pulumi.Output<String>? application,
    pulumi.Output<String>? arn,
    pulumi.Output<List<String>>? autoscalingGroups,
    pulumi.Output<String>? cname,
    pulumi.Output<String>? cnamePrefix,
    pulumi.Output<String>? description,
    pulumi.Output<String>? endpointUrl,
    pulumi.Output<List<String>>? instances,
    pulumi.Output<List<String>>? launchConfigurations,
    pulumi.Output<List<String>>? loadBalancers,
    pulumi.Output<String>? name,
    pulumi.Output<String>? platformArn,
    pulumi.Output<String>? pollInterval,
    pulumi.Output<List<String>>? queues,
    pulumi.Output<String>? region,
    pulumi.Output<List<EnvironmentSetting>>? settings,
    pulumi.Output<String>? solutionStackName,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
    pulumi.Output<String>? templateName,
    pulumi.Output<String>? tier,
    pulumi.Output<List<String>>? triggers,
    pulumi.Output<String>? version,
    pulumi.Output<String>? waitForReadyTimeout,
  }) :
      allSettings = pulumi.Input.asOptionalInput<List<EnvironmentAllSetting>>(allSettings),
      application = pulumi.Input.asOptionalInput<String>(application),
      arn = pulumi.Input.asOptionalInput<String>(arn),
      autoscalingGroups = pulumi.Input.asOptionalInput<List<String>>(autoscalingGroups),
      cname = pulumi.Input.asOptionalInput<String>(cname),
      cnamePrefix = pulumi.Input.asOptionalInput<String>(cnamePrefix),
      description = pulumi.Input.asOptionalInput<String>(description),
      endpointUrl = pulumi.Input.asOptionalInput<String>(endpointUrl),
      instances = pulumi.Input.asOptionalInput<List<String>>(instances),
      launchConfigurations = pulumi.Input.asOptionalInput<List<String>>(launchConfigurations),
      loadBalancers = pulumi.Input.asOptionalInput<List<String>>(loadBalancers),
      name = pulumi.Input.asOptionalInput<String>(name),
      platformArn = pulumi.Input.asOptionalInput<String>(platformArn),
      pollInterval = pulumi.Input.asOptionalInput<String>(pollInterval),
      queues = pulumi.Input.asOptionalInput<List<String>>(queues),
      region = pulumi.Input.asOptionalInput<String>(region),
      settings = pulumi.Input.asOptionalInput<List<EnvironmentSetting>>(settings),
      solutionStackName = pulumi.Input.asOptionalInput<String>(solutionStackName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll),
      templateName = pulumi.Input.asOptionalInput<String>(templateName),
      tier = pulumi.Input.asOptionalInput<String>(tier),
      triggers = pulumi.Input.asOptionalInput<List<String>>(triggers),
      version = pulumi.Input.asOptionalInput<String>(version),
      waitForReadyTimeout = pulumi.Input.asOptionalInput<String>(waitForReadyTimeout);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allSettings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentAllSetting>, List<Map<String, dynamic>>>(allSettings, (value) => pulumi.Input.encodeList<EnvironmentAllSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'application': ?application,
      'arn': ?arn,
      'autoscalingGroups': ?autoscalingGroups,
      'cname': ?cname,
      'cnamePrefix': ?cnamePrefix,
      'description': ?description,
      'endpointUrl': ?endpointUrl,
      'instances': ?instances,
      'launchConfigurations': ?launchConfigurations,
      'loadBalancers': ?loadBalancers,
      'name': ?name,
      'platformArn': ?platformArn,
      'pollInterval': ?pollInterval,
      'queues': ?queues,
      'region': ?region,
      'settings': ?pulumi.Input.mapOptionalInputValue<List<EnvironmentSetting>, List<Map<String, dynamic>>>(settings, (value) => pulumi.Input.encodeList<EnvironmentSetting, Map<String, dynamic>>(value, (value) => value.toMap())),
      'solutionStackName': ?solutionStackName,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'templateName': ?templateName,
      'tier': ?tier,
      'triggers': ?triggers,
      'version': ?version,
      'waitForReadyTimeout': ?waitForReadyTimeout,
    };
  }

  factory EnvironmentState.fromMap(Map<String, dynamic> map) {
    return EnvironmentState(
      allSettings: map['allSettings'] == null ? null : pulumi.Output.create<List<EnvironmentAllSetting>>(pulumi.Input.decodeList<EnvironmentAllSetting>(map['allSettings'], (value) => EnvironmentAllSetting.fromMap((value as Map).cast<String, dynamic>()))),
      application: map['application'] == null ? null : pulumi.Output.create<String>(map['application'] as String),
      arn: map['arn'] == null ? null : pulumi.Output.create<String>(map['arn'] as String),
      autoscalingGroups: map['autoscalingGroups'] == null ? null : pulumi.Output.create<List<String>>((map['autoscalingGroups'] as List).cast<String>()),
      cname: map['cname'] == null ? null : pulumi.Output.create<String>(map['cname'] as String),
      cnamePrefix: map['cnamePrefix'] == null ? null : pulumi.Output.create<String>(map['cnamePrefix'] as String),
      description: map['description'] == null ? null : pulumi.Output.create<String>(map['description'] as String),
      endpointUrl: map['endpointUrl'] == null ? null : pulumi.Output.create<String>(map['endpointUrl'] as String),
      instances: map['instances'] == null ? null : pulumi.Output.create<List<String>>((map['instances'] as List).cast<String>()),
      launchConfigurations: map['launchConfigurations'] == null ? null : pulumi.Output.create<List<String>>((map['launchConfigurations'] as List).cast<String>()),
      loadBalancers: map['loadBalancers'] == null ? null : pulumi.Output.create<List<String>>((map['loadBalancers'] as List).cast<String>()),
      name: map['name'] == null ? null : pulumi.Output.create<String>(map['name'] as String),
      platformArn: map['platformArn'] == null ? null : pulumi.Output.create<String>(map['platformArn'] as String),
      pollInterval: map['pollInterval'] == null ? null : pulumi.Output.create<String>(map['pollInterval'] as String),
      queues: map['queues'] == null ? null : pulumi.Output.create<List<String>>((map['queues'] as List).cast<String>()),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      settings: map['settings'] == null ? null : pulumi.Output.create<List<EnvironmentSetting>>(pulumi.Input.decodeList<EnvironmentSetting>(map['settings'], (value) => EnvironmentSetting.fromMap((value as Map).cast<String, dynamic>()))),
      solutionStackName: map['solutionStackName'] == null ? null : pulumi.Output.create<String>(map['solutionStackName'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
      templateName: map['templateName'] == null ? null : pulumi.Output.create<String>(map['templateName'] as String),
      tier: map['tier'] == null ? null : pulumi.Output.create<String>(map['tier'] as String),
      triggers: map['triggers'] == null ? null : pulumi.Output.create<List<String>>((map['triggers'] as List).cast<String>()),
      version: map['version'] == null ? null : pulumi.Output.create<String>(map['version'] as String),
      waitForReadyTimeout: map['waitForReadyTimeout'] == null ? null : pulumi.Output.create<String>(map['waitForReadyTimeout'] as String),
    );
  }
}

