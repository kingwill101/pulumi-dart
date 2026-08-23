// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetLicenseGrantsFilter {
  /// Name of the field to filter by, as defined by
  /// [the underlying AWS API](https://docs.aws.amazon.com/license-manager/latest/APIReference/API_ListReceivedGrants.html#API_ListReceivedGrants_RequestSyntax).
  /// For example, if filtering using `ProductSKU`, use:
  ///
  ///
  /// ```typescript
  /// import * as pulumi from "@pulumi/pulumi";
  /// import * as aws from "@pulumi/aws";
  ///
  /// const selected = aws.licensemanager.getLicenseGrants({
  ///     filters: [{
  ///         name: "ProductSKU",
  ///         values: [""],
  ///     }],
  /// });
  /// ```
  /// ```python
  /// import pulumi
  /// import pulumi_aws as aws
  ///
  /// selected = aws.licensemanager.get_license_grants(filters=[{
  ///     "name": "ProductSKU",
  ///     "values": [""],
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
  ///     var selected = Aws.LicenseManager.GetLicenseGrants.Invoke(new()
  ///     {
  ///         Filters = new[]
  ///         {
  ///             new Aws.LicenseManager.Inputs.GetLicenseGrantsFilterInputArgs
  ///             {
  ///                 Name = "ProductSKU",
  ///                 Values = new[]
  ///                 {
  ///                     "",
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
  /// 		_, err := licensemanager.GetLicenseGrants(ctx, &licensemanager.GetLicenseGrantsArgs{
  /// 			Filters: []licensemanager.GetLicenseGrantsFilter{
  /// 				{
  /// 					Name: "ProductSKU",
  /// 					Values: []string{
  /// 						"",
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
  /// data "aws_licensemanager_getlicensegrants" "selected" {
  ///   filters {
  ///     name   = "ProductSKU"
  ///     values = [""]
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
  ///         final var selected = LicensemanagerFunctions.getLicenseGrants(GetLicenseGrantsArgs.builder()
  ///             .filters(GetLicenseGrantsFilterArgs.builder()
  ///                 .name("ProductSKU")
  ///                 .values("")
  ///                 .build())
  ///             .build());
  ///
  ///     }
  /// }
  /// ```
  /// ```yaml
  /// variables:
  ///   selected:
  ///     fn::invoke:
  ///       function: aws:licensemanager:getLicenseGrants
  ///       arguments:
  ///         filters:
  ///           - name: ProductSKU
  ///             values:
  ///               - ""
  /// ```
  final pulumi.Input<String> name;
  /// Set of values that are accepted for the given field.
  final pulumi.Input<List<String>> values;

  /// Creates a new [GetLicenseGrantsFilter].
  /// [name] Name of the field to filter by, as defined by
  /// [values] Set of values that are accepted for the given field.
  const GetLicenseGrantsFilter({
    required this.name,
    required this.values,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'values': values,
    };
  }

  factory GetLicenseGrantsFilter.fromMap(Map<String, dynamic> map) {
    return GetLicenseGrantsFilter(
      name: pulumi.Input.fromValue(map['name'] as String),
      values: pulumi.Input.fromValue((map['values'] as List).cast<String>()),
    );
  }
}
