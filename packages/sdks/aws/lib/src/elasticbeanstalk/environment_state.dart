// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'environment_all_setting.dart';
import 'environment_setting.dart';

/// Input properties used for looking up and filtering Environment resources.
class EnvironmentState {
  /// List of all option settings configured in this Environment. These
  /// are a combination of default settings and their overrides from `setting` in
  /// the configuration.
  final pulumi.Input<List<EnvironmentAllSetting>?>? allSettings;
  /// Name of the application that contains the version
  /// to be deployed
  final pulumi.Input<dynamic>? application;
  final pulumi.Input<String?>? arn;
  /// The autoscaling groups used by this Environment.
  final pulumi.Input<List<String>?>? autoscalingGroups;
  /// Fully qualified DNS name for this Environment.
  final pulumi.Input<String?>? cname;
  /// Prefix to use for the fully qualified DNS name of
  /// the Environment.
  final pulumi.Input<String?>? cnamePrefix;
  /// Short description of the Environment
  final pulumi.Input<String?>? description;
  /// The URL to the Load Balancer for this Environment
  final pulumi.Input<String?>? endpointUrl;
  /// Instances used by this Environment.
  final pulumi.Input<List<String>?>? instances;
  /// Launch configurations in use by this Environment.
  final pulumi.Input<List<String>?>? launchConfigurations;
  /// Elastic load balancers in use by this Environment.
  final pulumi.Input<List<String>?>? loadBalancers;
  /// A unique name for this Environment. This name is used
  /// in the application URL
  final pulumi.Input<String?>? name;
  /// The [ARN](https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html) of the Elastic Beanstalk [Platform](https://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-beanstalk-environment.html#cfn-beanstalk-environment-platformarn)
  /// to use in deployment
  final pulumi.Input<String?>? platformArn;
  /// The time between polling the AWS API to
  /// check if changes have been applied. Use this to adjust the rate of API calls
  /// for any `create` or `update` action. Minimum `10s`, maximum `180s`. Omit this to
  /// use the default behavior, which is an exponential backoff
  final pulumi.Input<String?>? pollInterval;
  /// SQS queues in use by this Environment.
  final pulumi.Input<List<String>?>? queues;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Option settings to configure the new Environment. These
  /// override specific values that are set as defaults. The format is detailed
  /// below in Option Settings
  final pulumi.Input<List<EnvironmentSetting>?>? settings;
  /// A solution stack to base your environment
  /// off of. Example stacks can be found in the [Amazon API documentation](https://docs.aws.amazon.com/elasticbeanstalk/latest/dg/concepts.platforms.html)
  final pulumi.Input<String?>? solutionStackName;
  /// A set of tags to apply to the Environment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// The name of the Elastic Beanstalk Configuration
  /// template to use in deployment
  final pulumi.Input<String?>? templateName;
  /// Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// or `WebServer`. If tier is left blank `WebServer` will be used.
  final pulumi.Input<String?>? tier;
  /// Autoscaling triggers in use by this Environment.
  final pulumi.Input<List<String>?>? triggers;
  /// The name of the Elastic Beanstalk Application Version
  /// to use in deployment.
  final pulumi.Input<dynamic>? version;
  /// The maximum
  /// [duration](https://golang.org/pkg/time/#ParseDuration) that this provider should
  /// wait for an Elastic Beanstalk Environment to be in a ready state before timing
  /// out.
  final pulumi.Input<String?>? waitForReadyTimeout;

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
  /// [tags] A set of tags to apply to the Environment. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [templateName] The name of the Elastic Beanstalk Configuration
  /// [tier] Elastic Beanstalk Environment tier. Valid values are `Worker`
  /// [triggers] Autoscaling triggers in use by this Environment.
  /// [version] The name of the Elastic Beanstalk Application Version
  /// [waitForReadyTimeout] The maximum
  const EnvironmentState({
    this.allSettings,
    this.application,
    this.arn,
    this.autoscalingGroups,
    this.cname,
    this.cnamePrefix,
    this.description,
    this.endpointUrl,
    this.instances,
    this.launchConfigurations,
    this.loadBalancers,
    this.name,
    this.platformArn,
    this.pollInterval,
    this.queues,
    this.region,
    this.settings,
    this.solutionStackName,
    this.tags,
    this.tagsAll,
    this.templateName,
    this.tier,
    this.triggers,
    this.version,
    this.waitForReadyTimeout,
  });

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
      allSettings: (() { final guardedValue = map['allSettings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentAllSetting>(guardedValue, (value) => EnvironmentAllSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      application: (() { final guardedValue = map['application']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoscalingGroups: (() { final guardedValue = map['autoscalingGroups']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      cname: (() { final guardedValue = map['cname']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      cnamePrefix: (() { final guardedValue = map['cnamePrefix']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      endpointUrl: (() { final guardedValue = map['endpointUrl']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      instances: (() { final guardedValue = map['instances']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      launchConfigurations: (() { final guardedValue = map['launchConfigurations']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      loadBalancers: (() { final guardedValue = map['loadBalancers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      platformArn: (() { final guardedValue = map['platformArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pollInterval: (() { final guardedValue = map['pollInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      queues: (() { final guardedValue = map['queues']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      settings: (() { final guardedValue = map['settings']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EnvironmentSetting>(guardedValue, (value) => EnvironmentSetting.fromMap((value as Map).cast<String, dynamic>()))); })(),
      solutionStackName: (() { final guardedValue = map['solutionStackName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      templateName: (() { final guardedValue = map['templateName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      triggers: (() { final guardedValue = map['triggers']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      version: (() { final guardedValue = map['version']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      waitForReadyTimeout: (() { final guardedValue = map['waitForReadyTimeout']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
