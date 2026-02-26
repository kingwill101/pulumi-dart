import 'package:pulumi/pulumi.dart';
import '../organization_kaj_policy_config_default_key_access_justification_policy/organization_kaj_policy_config_default_key_access_justification_policy.dart';
import 'organization_kaj_policy_config_args.dart';

/// ## Example Usage
///
/// ### Kms Organization Kaj Policy Config Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const example = new gcp.kms.OrganizationKajPolicyConfig("example", {
/// organization: "123456789",
/// defaultKeyAccessJustificationPolicy: {
/// allowedAccessReasons: [
/// "CUSTOMER_INITIATED_ACCESS",
/// "GOOGLE_INITIATED_SYSTEM_OPERATION",
/// ],
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// example = gcp.kms.OrganizationKajPolicyConfig("example",
/// organization="123456789",
/// default_key_access_justification_policy={
/// "allowed_access_reasons": [
/// "CUSTOMER_INITIATED_ACCESS",
/// "GOOGLE_INITIATED_SYSTEM_OPERATION",
/// ],
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Gcp.Kms.OrganizationKajPolicyConfig("example", new()
/// {
/// Organization = "123456789",
/// DefaultKeyAccessJustificationPolicy = new Gcp.Kms.Inputs.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs
/// {
/// AllowedAccessReasons = new[]
/// {
/// "CUSTOMER_INITIATED_ACCESS",
/// "GOOGLE_INITIATED_SYSTEM_OPERATION",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/kms"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := kms.NewOrganizationKajPolicyConfig(ctx, "example", &kms.OrganizationKajPolicyConfigArgs{
/// Organization: pulumi.String("123456789"),
/// DefaultKeyAccessJustificationPolicy: &kms.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs{
/// AllowedAccessReasons: pulumi.StringArray{
/// pulumi.String("CUSTOMER_INITIATED_ACCESS"),
/// pulumi.String("GOOGLE_INITIATED_SYSTEM_OPERATION"),
/// },
/// },
/// })
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
/// import com.pulumi.gcp.kms.OrganizationKajPolicyConfig;
/// import com.pulumi.gcp.kms.OrganizationKajPolicyConfigArgs;
/// import com.pulumi.gcp.kms.inputs.OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs;
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
/// var example = new OrganizationKajPolicyConfig("example", OrganizationKajPolicyConfigArgs.builder()
/// .organization("123456789")
/// .defaultKeyAccessJustificationPolicy(OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicyArgs.builder()
/// .allowedAccessReasons(
/// "CUSTOMER_INITIATED_ACCESS",
/// "GOOGLE_INITIATED_SYSTEM_OPERATION")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: gcp:kms:OrganizationKajPolicyConfig
/// properties:
/// organization: '123456789'
/// defaultKeyAccessJustificationPolicy:
/// allowedAccessReasons:
/// - CUSTOMER_INITIATED_ACCESS
/// - GOOGLE_INITIATED_SYSTEM_OPERATION
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// OrganizationKajPolicyConfig can be imported using any of these accepted formats:
///
/// * `organizations/{{organization}}/kajPolicyConfig`
///
/// * `{{organization}}`
///
/// When using the `pulumi import` command, OrganizationKajPolicyConfig can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default organizations/{{organization}}/kajPolicyConfig
/// ```
///
/// ```sh
/// $ pulumi import gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig default {{organization}}
/// ```
class OrganizationKajPolicyConfig extends CustomResource {
  /// The default key access justification policy used when a CryptoKey is
  /// created in this organization. This is only used when a Key Access Justifications
  /// policy is not provided in the CreateCryptoKeyRequest.
  /// Structure is documented below.
  late final Output<
          OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>
      defaultKeyAccessJustificationPolicy;

  /// The organization number for which to retrieve config.
  late final Output<String> organization;

  OrganizationKajPolicyConfig(
    String name, {
    OrganizationKajPolicyConfigArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:kms/organizationKajPolicyConfig:OrganizationKajPolicyConfig',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.defaultKeyAccessJustificationPolicy = registerOutput<
            OrganizationKajPolicyConfigDefaultKeyAccessJustificationPolicy?>(
        'defaultKeyAccessJustificationPolicy');
    this.organization = registerOutput<String>('organization');
  }
}
