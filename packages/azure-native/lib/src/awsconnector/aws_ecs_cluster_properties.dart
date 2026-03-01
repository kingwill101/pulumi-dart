// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'capacity_provider_strategy_item.dart';
import 'cluster_configuration.dart';
import 'cluster_settings.dart';
import 'service_connect_defaults.dart';
import 'tag.dart';

/// Definition of awsEcsCluster
class AwsEcsClusterProperties {
  /// Property arn
  final String? arn;
  /// The short name of one or more capacity providers to associate with the cluster. A capacity provider must be associated with a cluster before it can be included as part of the default capacity provider strategy of the cluster or used in a capacity provider strategy when calling the [CreateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html) or [RunTask](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) actions. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must be created but not associated with another cluster. New Auto Scaling group capacity providers can be created with the [CreateCapacityProvider](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html) API operation. To use a FARGATElong capacity provider, specify either the ``FARGATE`` or ``FARGATE_SPOT`` capacity providers. The FARGATElong capacity providers are available to all accounts and only need to be associated with a cluster to be used. The [PutCapacityProvider](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutCapacityProvider.html) API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
  final List<String>? capacityProviders;
  /// A user-generated string that you use to identify your cluster. If you don't specify a name, CFNlong generates a unique physical ID for the name.
  final String? clusterName;
  /// The settings to use when creating a cluster. This parameter is used to turn on CloudWatch Container Insights for a cluster.
  final List<ClusterSettings>? clusterSettings;
  /// The execute command configuration for the cluster. The execute command configuration for the cluster.
  final ClusterConfiguration? configuration;
  /// The default capacity provider strategy for the cluster. When services or tasks are run in the cluster with no launch type or capacity provider strategy specified, the default capacity provider strategy is used.
  final List<CapacityProviderStrategyItem>? defaultCapacityProviderStrategy;
  /// Use this parameter to set a default Service Connect namespace. After you set a default Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as client services in the namespace. This setting only applies to new services that set the ``enabled`` parameter to ``true`` in the ``ServiceConnectConfiguration``. You can set the namespace of each service individually in the ``ServiceConnectConfiguration`` to override this default parameter. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*. Use this parameter to set a default Service Connect namespace. After you set a default Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as client services in the namespace. This setting only applies to new services that set the ``enabled`` parameter to ``true`` in the ``ServiceConnectConfiguration``. You can set the namespace of each service individually in the ``ServiceConnectConfiguration`` to override this default parameter. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  final ServiceConnectDefaults? serviceConnectDefaults;
  /// The metadata that you apply to the cluster to help you categorize and organize them. Each tag consists of a key and an optional value. You define both. The following basic restrictions apply to tags:  +  Maximum number of tags per resource - 50  +  For each resource, each tag key must be unique, and each tag key can have only one value.  +  Maximum key length - 128 Unicode characters in UTF-8  +  Maximum value length - 256 Unicode characters in UTF-8  +  If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.  +  Tag keys and values are case-sensitive.  +  Do not use ``aws:``, ``AWS:``, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
  final List<Tag>? tags;

  /// Creates a new [AwsEcsClusterProperties].
  /// [arn] Property arn
  /// [capacityProviders] The short name of one or more capacity providers to associate with the cluster. A capacity provider must be associated with a cluster before it can be included as part of the default capacity provider strategy of the cluster or used in a capacity provider strategy when calling the [CreateService](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateService.html) or [RunTask](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_RunTask.html) actions. If specifying a capacity provider that uses an Auto Scaling group, the capacity provider must be created but not associated with another cluster. New Auto Scaling group capacity providers can be created with the [CreateCapacityProvider](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_CreateCapacityProvider.html) API operation. To use a FARGATElong capacity provider, specify either the ``FARGATE`` or ``FARGATE_SPOT`` capacity providers. The FARGATElong capacity providers are available to all accounts and only need to be associated with a cluster to be used. The [PutCapacityProvider](https://docs.aws.amazon.com/AmazonECS/latest/APIReference/API_PutCapacityProvider.html) API operation is used to update the list of available capacity providers for a cluster after the cluster is created.
  /// [clusterName] A user-generated string that you use to identify your cluster. If you don't specify a name, CFNlong generates a unique physical ID for the name.
  /// [clusterSettings] The settings to use when creating a cluster. This parameter is used to turn on CloudWatch Container Insights for a cluster.
  /// [configuration] The execute command configuration for the cluster. The execute command configuration for the cluster.
  /// [defaultCapacityProviderStrategy] The default capacity provider strategy for the cluster. When services or tasks are run in the cluster with no launch type or capacity provider strategy specified, the default capacity provider strategy is used.
  /// [serviceConnectDefaults] Use this parameter to set a default Service Connect namespace. After you set a default Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as client services in the namespace. This setting only applies to new services that set the ``enabled`` parameter to ``true`` in the ``ServiceConnectConfiguration``. You can set the namespace of each service individually in the ``ServiceConnectConfiguration`` to override this default parameter. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*. Use this parameter to set a default Service Connect namespace. After you set a default Service Connect namespace, any new services with Service Connect turned on that are created in the cluster are added as client services in the namespace. This setting only applies to new services that set the ``enabled`` parameter to ``true`` in the ``ServiceConnectConfiguration``. You can set the namespace of each service individually in the ``ServiceConnectConfiguration`` to override this default parameter. Tasks that run in a namespace can use short names to connect to services in the namespace. Tasks can connect to services across all of the clusters in the namespace. Tasks connect through a managed proxy container that collects logs and metrics for increased visibility. Only the tasks that Amazon ECS services create are supported with Service Connect. For more information, see [Service Connect](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/service-connect.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [tags] The metadata that you apply to the cluster to help you categorize and organize them. Each tag consists of a key and an optional value. You define both. The following basic restrictions apply to tags:  +  Maximum number of tags per resource - 50  +  For each resource, each tag key must be unique, and each tag key can have only one value.  +  Maximum key length - 128 Unicode characters in UTF-8  +  Maximum value length - 256 Unicode characters in UTF-8  +  If your tagging schema is used across multiple services and resources, remember that other services may have restrictions on allowed characters. Generally allowed characters are: letters, numbers, and spaces representable in UTF-8, and the following characters: + - = . _ : / @.  +  Tag keys and values are case-sensitive.  +  Do not use ``aws:``, ``AWS:``, or any upper or lowercase combination of such as a prefix for either keys or values as it is reserved for AWS use. You cannot edit or delete tag keys or values with this prefix. Tags with this prefix do not count against your tags per resource limit.
  AwsEcsClusterProperties({
    this.arn,
    this.capacityProviders,
    this.clusterName,
    this.clusterSettings,
    this.configuration,
    this.defaultCapacityProviderStrategy,
    this.serviceConnectDefaults,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'capacityProviders': ?capacityProviders,
      'clusterName': ?clusterName,
      'clusterSettings': ?clusterSettings == null ? null : pulumi.Input.encodeList<ClusterSettings, Map<String, dynamic>>(clusterSettings!, (value) => value.toMap()),
      'configuration': ?configuration == null ? null : configuration!.toMap(),
      'defaultCapacityProviderStrategy': ?defaultCapacityProviderStrategy == null ? null : pulumi.Input.encodeList<CapacityProviderStrategyItem, Map<String, dynamic>>(defaultCapacityProviderStrategy!, (value) => value.toMap()),
      'serviceConnectDefaults': ?serviceConnectDefaults == null ? null : serviceConnectDefaults!.toMap(),
      'tags': ?tags == null ? null : pulumi.Input.encodeList<Tag, Map<String, dynamic>>(tags!, (value) => value.toMap()),
    };
  }

  factory AwsEcsClusterProperties.fromMap(Map<String, dynamic> map) {
    return AwsEcsClusterProperties(
      arn: map['arn'] == null ? null : map['arn'] as String,
      capacityProviders: map['capacityProviders'] == null ? null : (map['capacityProviders'] as List).cast<String>(),
      clusterName: map['clusterName'] == null ? null : map['clusterName'] as String,
      clusterSettings: map['clusterSettings'] == null ? null : pulumi.Input.decodeList<ClusterSettings>(map['clusterSettings'], (value) => ClusterSettings.fromMap((value as Map).cast<String, dynamic>())),
      configuration: map['configuration'] == null ? null : ClusterConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>()),
      defaultCapacityProviderStrategy: map['defaultCapacityProviderStrategy'] == null ? null : pulumi.Input.decodeList<CapacityProviderStrategyItem>(map['defaultCapacityProviderStrategy'], (value) => CapacityProviderStrategyItem.fromMap((value as Map).cast<String, dynamic>())),
      serviceConnectDefaults: map['serviceConnectDefaults'] == null ? null : ServiceConnectDefaults.fromMap((map['serviceConnectDefaults'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : pulumi.Input.decodeList<Tag>(map['tags'], (value) => Tag.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

