import 'package:pulumi/pulumi.dart';
import 'get_configuration_profiles_args.dart';
import 'get_configuration_profiles_result.dart';

/// Provides access to all Configuration Properties for an AppConfig Application. This will allow you to pass Configuration
/// Profile IDs to another resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.appconfig.getConfigurationProfiles({
/// applicationId: "a1d3rpe",
/// });
/// const exampleGetConfigurationProfile = example.then(example => .reduce((__obj, [__key, __value]) => ({ ...__obj, [__key]: aws.appconfig.getConfigurationProfile({
/// configurationProfileId: __value,
/// applicationId: exampleAwsAppconfigApplication.id,
/// }) })));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.appconfig.get_configuration_profiles(application_id="a1d3rpe")
/// example_get_configuration_profile = {__key: aws.appconfig.get_configuration_profile(configuration_profile_id=__value,
/// application_id=example_aws_appconfig_application["id"]) for __key, __value in example.configuration_profile_ids}
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = Aws.AppConfig.GetConfigurationProfiles.Invoke(new()
/// {
/// ApplicationId = "a1d3rpe",
/// });
///
/// var exampleGetConfigurationProfile = ;
///
/// });
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetConfigurationProfilesResult> getConfigurationProfiles(
  GetConfigurationProfilesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:appconfig/getConfigurationProfiles:getConfigurationProfiles',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetConfigurationProfilesResult.fromMap(result);
}
