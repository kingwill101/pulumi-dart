import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_license_grants_args.dart';
import 'get_license_grants_result.dart';
import 'get_received_license_args.dart';
import 'get_received_license_result.dart';
import 'get_received_licenses_args.dart';
import 'get_received_licenses_result.dart';

/// This resource can be used to get a set of license grant ARNs matching a filter.
///
/// ## Example Usage
///
/// The following shows getting all license grant ARNs granted to your account.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getCallerIdentity({});
/// const test = current.then(current => aws.licensemanager.getLicenseGrants({
///     filters: [{
///         name: "GranteePrincipalARN",
///         values: [`arn:aws:iam::${current.accountId}:root`],
///     }],
/// }));
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_caller_identity()
/// test = aws.licensemanager.get_license_grants(filters=[{
///     "name": "GranteePrincipalARN",
///     "values": [f"arn:aws:iam::{current.account_id}:root"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetCallerIdentity.Invoke();
///
///     var test = Aws.LicenseManager.GetLicenseGrants.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.LicenseManager.Inputs.GetLicenseGrantsFilterInputArgs
///             {
///                 Name = "GranteePrincipalARN",
///                 Values = new[]
///                 {
///                     $"arn:aws:iam::{current.Apply(getCallerIdentityResult => getCallerIdentityResult.AccountId)}:root",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetCallerIdentity(ctx, &aws.GetCallerIdentityArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = licensemanager.GetLicenseGrants(ctx, &licensemanager.GetLicenseGrantsArgs{
/// 			Filters: []licensemanager.GetLicenseGrantsFilter{
/// 				{
/// 					Name: "GranteePrincipalARN",
/// 					Values: []string{
/// 						fmt.Sprintf("arn:aws:iam::%v:root", current.AccountId),
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getcalleridentity" "current" {
/// }
/// data "aws_licensemanager_getlicensegrants" "test" {
///   filters {
///     name   = "GranteePrincipalARN"
///     values = ["arn:aws:iam::${data.aws_getcalleridentity.current.account_id}:root"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetCallerIdentityArgs;
/// import com.pulumi.aws.licensemanager.LicensemanagerFunctions;
/// import com.pulumi.aws.licensemanager.inputs.GetLicenseGrantsArgs;
/// import com.pulumi.aws.licensemanager.inputs.GetLicenseGrantsFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var current = AwsFunctions.getCallerIdentity(GetCallerIdentityArgs.builder()
///             .build());
///
///         final var test = LicensemanagerFunctions.getLicenseGrants(GetLicenseGrantsArgs.builder()
///             .filters(GetLicenseGrantsFilterArgs.builder()
///                 .name("GranteePrincipalARN")
///                 .values(String.format("arn:aws:iam::%s:root", current.accountId()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getCallerIdentity
///       arguments: {}
///   test:
///     fn::invoke:
///       function: aws:licensemanager:getLicenseGrants
///       arguments:
///         filters:
///           - name: GranteePrincipalARN
///             values:
///               - arn:aws:iam::${current.accountId}:root
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_licensemanager_get_license_grants_get_license_grants_args_doc}
/// [options] Invoke options controlling this call.
Future<GetLicenseGrantsResult> getLicenseGrants(
  GetLicenseGrantsArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getLicenseGrants:getLicenseGrants',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetLicenseGrantsResult.fromMap(result);
}

/// This resource can be used to get data on a received license using an ARN. This can be helpful for pulling in data on a license from the AWS marketplace and sharing that license with another account.
///
/// ## Example Usage
///
/// The following shows getting the received license data using and ARN.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.licensemanager.getReceivedLicense({
///     licenseArn: "arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.licensemanager.get_received_license(license_arn="arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.LicenseManager.GetReceivedLicense.Invoke(new()
///     {
///         LicenseArn = "arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := licensemanager.GetReceivedLicense(ctx, &licensemanager.GetReceivedLicenseArgs{
/// 			LicenseArn: "arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_licensemanager_getreceivedlicense" "test" {
///   license_arn = "arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.licensemanager.LicensemanagerFunctions;
/// import com.pulumi.aws.licensemanager.inputs.GetReceivedLicenseArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = LicensemanagerFunctions.getReceivedLicense(GetReceivedLicenseArgs.builder()
///             .licenseArn("arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:licensemanager:getReceivedLicense
///       arguments:
///         licenseArn: arn:aws:license-manager::111111111111:license:l-ecbaa94eb71a4830b6d7e49268fecaa0
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_licensemanager_get_received_license_get_received_license_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReceivedLicenseResult> getReceivedLicense(
  GetReceivedLicenseArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getReceivedLicense:getReceivedLicense',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReceivedLicenseResult.fromMap(result);
}

/// This resource can be used to get a set of license ARNs matching a filter.
///
/// ## Example Usage
///
/// The following shows getting all license ARNs issued from the AWS marketplace. Providing no filter, would provide all license ARNs for the entire account.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = aws.licensemanager.getReceivedLicenses({
///     filters: [{
///         name: "IssuerName",
///         values: ["AWS/Marketplace"],
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.licensemanager.get_received_licenses(filters=[{
///     "name": "IssuerName",
///     "values": ["AWS/Marketplace"],
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = Aws.LicenseManager.GetReceivedLicenses.Invoke(new()
///     {
///         Filters = new[]
///         {
///             new Aws.LicenseManager.Inputs.GetReceivedLicensesFilterInputArgs
///             {
///                 Name = "IssuerName",
///                 Values = new[]
///                 {
///                     "AWS/Marketplace",
///                 },
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/licensemanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := licensemanager.GetReceivedLicenses(ctx, &licensemanager.GetReceivedLicensesArgs{
/// 			Filters: []licensemanager.GetReceivedLicensesFilter{
/// 				{
/// 					Name: "IssuerName",
/// 					Values: []string{
/// 						"AWS/Marketplace",
/// 					},
/// 				},
/// 			},
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_licensemanager_getreceivedlicenses" "test" {
///   filters {
///     name   = "IssuerName"
///     values = ["AWS/Marketplace"]
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.licensemanager.LicensemanagerFunctions;
/// import com.pulumi.aws.licensemanager.inputs.GetReceivedLicensesArgs;
/// import com.pulumi.aws.licensemanager.inputs.GetReceivedLicensesFilterArgs;
/// import java.util.ArrayList;
/// import java.util.Arrays;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var test = LicensemanagerFunctions.getReceivedLicenses(GetReceivedLicensesArgs.builder()
///             .filters(GetReceivedLicensesFilterArgs.builder()
///                 .name("IssuerName")
///                 .values("AWS/Marketplace")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// variables:
///   test:
///     fn::invoke:
///       function: aws:licensemanager:getReceivedLicenses
///       arguments:
///         filters:
///           - name: IssuerName
///             values:
///               - AWS/Marketplace
/// ```
/// [args] Arguments passed to this invoke. {@macro pulumi_licensemanager_get_received_licenses_get_received_licenses_args_doc}
/// [options] Invoke options controlling this call.
Future<GetReceivedLicensesResult> getReceivedLicenses(
  GetReceivedLicensesArgs args, {
  pulumi.InvokeOptions? options,
}) async {
  final deployment = pulumi.Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'aws:licensemanager/getReceivedLicenses:getReceivedLicenses',
    args.toMap(),
    options: pulumi.toDeploymentInvokeOptions(options),
  );
  return GetReceivedLicensesResult.fromMap(result);
}
