import 'package:pulumi/pulumi.dart';
import 'get_organization_settings_args.dart';
import 'get_organization_settings_result.dart';

/// Describes the settings associated with a organization.
///
/// To get more information about LoggingOrganizationSettings, see:
///
/// * [API documentation](https://cloud.google.com/logging/docs/reference/v2/rest/v2/organizations/getSettings)
/// * [Configure default settings for organizations and folders](https://cloud.google.com/logging/docs/default-settings).
///
/// ## Example Usage
///
/// ### Logging Organization Settings Basic
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const settings = gcp.logging.getOrganizationSettings({
/// organization: "my-organization-name",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// settings = gcp.logging.get_organization_settings(organization="my-organization-name")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var settings = Gcp.Logging.GetOrganizationSettings.Invoke(new()
/// {
/// Organization = "my-organization-name",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/logging"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := logging.LookupOrganizationSettings(ctx, &logging.LookupOrganizationSettingsArgs{
/// Organization: "my-organization-name",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.logging.LoggingFunctions;
/// import com.pulumi.gcp.logging.inputs.GetOrganizationSettingsArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var settings = LoggingFunctions.getOrganizationSettings(GetOrganizationSettingsArgs.builder()
/// .organization("my-organization-name")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// settings:
/// fn::invoke:
/// function: gcp:logging:getOrganizationSettings
/// arguments:
/// organization: my-organization-name
/// ```
/// <!--End PulumiCodeChooser -->
Future<GetOrganizationSettingsResult> getOrganizationSettings(
  GetOrganizationSettingsArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:logging/getOrganizationSettings:getOrganizationSettings',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetOrganizationSettingsResult.fromMap(result);
}
