// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'app_auto_branch_creation_config.dart';
import 'app_cache_config.dart';
import 'app_custom_rule.dart';
import 'app_job_config.dart';
import 'app_production_branch.dart';

/// Input properties used for looking up and filtering App resources.
class AppState {
  /// Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  final pulumi.Input<String>? accessToken;

  /// ARN of the Amplify app.
  final pulumi.Input<String>? arn;

  /// Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  final pulumi.Input<AppAutoBranchCreationConfig>? autoBranchCreationConfig;

  /// Automated branch creation glob patterns for an Amplify app.
  final pulumi.Input<List<String>>? autoBranchCreationPatterns;

  /// Credentials for basic authorization for an Amplify app.
  final pulumi.Input<String>? basicAuthCredentials;

  /// The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  final pulumi.Input<String>? buildSpec;

  /// Cache configuration for the Amplify app. See `cache_config` Block for details.
  final pulumi.Input<AppCacheConfig>? cacheConfig;

  /// AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  final pulumi.Input<String>? computeRoleArn;

  /// The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  final pulumi.Input<String>? customHeaders;

  /// Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  final pulumi.Input<List<AppCustomRule>>? customRules;

  /// Default domain for the Amplify app.
  final pulumi.Input<String>? defaultDomain;

  /// Description for an Amplify app.
  final pulumi.Input<String>? description;

  /// Enables automated branch creation for an Amplify app.
  final pulumi.Input<bool>? enableAutoBranchCreation;

  /// Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  final pulumi.Input<bool>? enableBasicAuth;

  /// Enables auto-building of branches for the Amplify App.
  final pulumi.Input<bool>? enableBranchAutoBuild;

  /// Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  final pulumi.Input<bool>? enableBranchAutoDeletion;

  /// Environment variables map for an Amplify app.
  final pulumi.Input<Map<String, String>>? environmentVariables;

  /// AWS Identity and Access Management (IAM) service role for an Amplify app.
  final pulumi.Input<String>? iamServiceRoleArn;

  /// Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  final pulumi.Input<AppJobConfig>? jobConfig;

  /// Name for an Amplify app.
  final pulumi.Input<String>? name;

  /// OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  final pulumi.Input<String>? oauthToken;

  /// Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  final pulumi.Input<String>? platform;

  /// Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  final pulumi.Input<List<AppProductionBranch>>? productionBranches;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Repository for an Amplify app.
  final pulumi.Input<String>? repository;

  /// Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [AppState].
  /// [accessToken] Personal access token for a third-party source control system for an Amplify app. This token must have write access to the relevant repo to create a webhook and a read-only deploy key for the Amplify project. The token is not stored, so after applying this attribute can be removed and the setup token deleted.
  /// [arn] ARN of the Amplify app.
  /// [autoBranchCreationConfig] Automated branch creation configuration for an Amplify app. See `auto_branch_creation_config` Block for details.
  /// [autoBranchCreationPatterns] Automated branch creation glob patterns for an Amplify app.
  /// [basicAuthCredentials] Credentials for basic authorization for an Amplify app.
  /// [buildSpec] The [build specification](https://docs.aws.amazon.com/amplify/latest/userguide/build-settings.html) (build spec) for an Amplify app.
  /// [cacheConfig] Cache configuration for the Amplify app. See `cache_config` Block for details.
  /// [computeRoleArn] AWS Identity and Access Management (IAM) SSR compute role for an Amplify app.
  /// [customHeaders] The [custom HTTP headers](https://docs.aws.amazon.com/amplify/latest/userguide/custom-headers.html) for an Amplify app.
  /// [customRules] Custom rewrite and redirect rules for an Amplify app. See `custom_rule` Block for details.
  /// [defaultDomain] Default domain for the Amplify app.
  /// [description] Description for an Amplify app.
  /// [enableAutoBranchCreation] Enables automated branch creation for an Amplify app.
  /// [enableBasicAuth] Enables basic authorization for an Amplify app. This will apply to all branches that are part of this app.
  /// [enableBranchAutoBuild] Enables auto-building of branches for the Amplify App.
  /// [enableBranchAutoDeletion] Automatically disconnects a branch in the Amplify Console when you delete a branch from your Git repository.
  /// [environmentVariables] Environment variables map for an Amplify app.
  /// [iamServiceRoleArn] AWS Identity and Access Management (IAM) service role for an Amplify app.
  /// [jobConfig] Used to configure the [Amplify Application build instance compute type](https://docs.aws.amazon.com/amplify/latest/APIReference/API_JobConfig.html#amplify-Type-JobConfig-buildComputeType). See `job_config` Block for details.
  /// [name] Name for an Amplify app.
  /// [oauthToken] OAuth token for a third-party source control system for an Amplify app. The OAuth token is used to create a webhook and a read-only deploy key. The OAuth token is not stored.
  /// [platform] Platform or framework for an Amplify app. Valid values: `WEB`, `WEB_COMPUTE`. Default value: `WEB`.
  /// [productionBranches] Describes the information about a production branch for an Amplify app. A `production_branch` block is documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [repository] Repository for an Amplify app.
  /// [tags] Key-value mapping of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  AppState({
    this.accessToken,
    this.arn,
    this.autoBranchCreationConfig,
    this.autoBranchCreationPatterns,
    this.basicAuthCredentials,
    this.buildSpec,
    this.cacheConfig,
    this.computeRoleArn,
    this.customHeaders,
    this.customRules,
    this.defaultDomain,
    this.description,
    this.enableAutoBranchCreation,
    this.enableBasicAuth,
    this.enableBranchAutoBuild,
    this.enableBranchAutoDeletion,
    this.environmentVariables,
    this.iamServiceRoleArn,
    this.jobConfig,
    this.name,
    this.oauthToken,
    this.platform,
    this.productionBranches,
    this.region,
    this.repository,
    this.tags,
    this.tagsAll,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accessToken': ?accessToken,
      'arn': ?arn,
      'autoBranchCreationConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AppAutoBranchCreationConfig,
            Map<String, dynamic>
          >(autoBranchCreationConfig, (value) => value.toMap()),
      'autoBranchCreationPatterns': ?autoBranchCreationPatterns,
      'basicAuthCredentials': ?basicAuthCredentials,
      'buildSpec': ?buildSpec,
      'cacheConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AppCacheConfig,
            Map<String, dynamic>
          >(cacheConfig, (value) => value.toMap()),
      'computeRoleArn': ?computeRoleArn,
      'customHeaders': ?customHeaders,
      'customRules':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppCustomRule>,
            List<Map<String, dynamic>>
          >(
            customRules,
            (value) =>
                pulumi.Input.encodeList<AppCustomRule, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'defaultDomain': ?defaultDomain,
      'description': ?description,
      'enableAutoBranchCreation': ?enableAutoBranchCreation,
      'enableBasicAuth': ?enableBasicAuth,
      'enableBranchAutoBuild': ?enableBranchAutoBuild,
      'enableBranchAutoDeletion': ?enableBranchAutoDeletion,
      'environmentVariables': ?environmentVariables,
      'iamServiceRoleArn': ?iamServiceRoleArn,
      'jobConfig':
          ?pulumi.Input.mapOptionalInputValue<
            AppJobConfig,
            Map<String, dynamic>
          >(jobConfig, (value) => value.toMap()),
      'name': ?name,
      'oauthToken': ?oauthToken,
      'platform': ?platform,
      'productionBranches':
          ?pulumi.Input.mapOptionalInputValue<
            List<AppProductionBranch>,
            List<Map<String, dynamic>>
          >(
            productionBranches,
            (value) =>
                pulumi.Input.encodeList<
                  AppProductionBranch,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'region': ?region,
      'repository': ?repository,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory AppState.fromMap(Map<String, dynamic> map) {
    return AppState(
      accessToken: (() {
        final guardedValue = map['accessToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      arn: (() {
        final guardedValue = map['arn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      autoBranchCreationConfig: (() {
        final guardedValue = map['autoBranchCreationConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppAutoBranchCreationConfig.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      autoBranchCreationPatterns: (() {
        final guardedValue = map['autoBranchCreationPatterns'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue((guardedValue as List).cast<String>());
      })(),
      basicAuthCredentials: (() {
        final guardedValue = map['basicAuthCredentials'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      buildSpec: (() {
        final guardedValue = map['buildSpec'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      cacheConfig: (() {
        final guardedValue = map['cacheConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppCacheConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      computeRoleArn: (() {
        final guardedValue = map['computeRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customHeaders: (() {
        final guardedValue = map['customHeaders'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      customRules: (() {
        final guardedValue = map['customRules'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppCustomRule>(
            guardedValue,
            (value) =>
                AppCustomRule.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      defaultDomain: (() {
        final guardedValue = map['defaultDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      enableAutoBranchCreation: (() {
        final guardedValue = map['enableAutoBranchCreation'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBasicAuth: (() {
        final guardedValue = map['enableBasicAuth'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBranchAutoBuild: (() {
        final guardedValue = map['enableBranchAutoBuild'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      enableBranchAutoDeletion: (() {
        final guardedValue = map['enableBranchAutoDeletion'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as bool);
      })(),
      environmentVariables: (() {
        final guardedValue = map['environmentVariables'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      iamServiceRoleArn: (() {
        final guardedValue = map['iamServiceRoleArn'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      jobConfig: (() {
        final guardedValue = map['jobConfig'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          AppJobConfig.fromMap((guardedValue as Map).cast<String, dynamic>()),
        );
      })(),
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      oauthToken: (() {
        final guardedValue = map['oauthToken'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      platform: (() {
        final guardedValue = map['platform'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      productionBranches: (() {
        final guardedValue = map['productionBranches'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<AppProductionBranch>(
            guardedValue,
            (value) => AppProductionBranch.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      repository: (() {
        final guardedValue = map['repository'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
      tagsAll: (() {
        final guardedValue = map['tagsAll'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          (guardedValue as Map).cast<String, String>(),
        );
      })(),
    );
  }
}
