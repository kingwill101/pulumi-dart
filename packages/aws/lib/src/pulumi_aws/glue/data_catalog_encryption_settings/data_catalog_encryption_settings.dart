import 'package:pulumi/pulumi.dart';
import '../data_catalog_encryption_settings_data_catalog_encryption_settings/data_catalog_encryption_settings_data_catalog_encryption_settings.dart';
import 'data_catalog_encryption_settings_args.dart';

/// Provides a Glue Data Catalog Encryption Settings resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.glue.DataCatalogEncryptionSettings("example", {dataCatalogEncryptionSettings: {
/// connectionPasswordEncryption: {
/// awsKmsKeyId: test.arn,
/// returnConnectionPasswordEncrypted: true,
/// },
/// encryptionAtRest: {
/// catalogEncryptionMode: "SSE-KMS",
/// catalogEncryptionServiceRole: role.test.arn,
/// sseAwsKmsKeyId: test.arn,
/// },
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.glue.DataCatalogEncryptionSettings("example", data_catalog_encryption_settings={
/// "connection_password_encryption": {
/// "aws_kms_key_id": test["arn"],
/// "return_connection_password_encrypted": True,
/// },
/// "encryption_at_rest": {
/// "catalog_encryption_mode": "SSE-KMS",
/// "catalog_encryption_service_role": role["test"]["arn"],
/// "sse_aws_kms_key_id": test["arn"],
/// },
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Glue.DataCatalogEncryptionSettings("example", new()
/// {
/// DataCatalogEncryptionSettingsConfig = new Aws.Glue.Inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsArgs
/// {
/// ConnectionPasswordEncryption = new Aws.Glue.Inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryptionArgs
/// {
/// AwsKmsKeyId = test.Arn,
/// ReturnConnectionPasswordEncrypted = true,
/// },
/// EncryptionAtRest = new Aws.Glue.Inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRestArgs
/// {
/// CatalogEncryptionMode = "SSE-KMS",
/// CatalogEncryptionServiceRole = role.Test.Arn,
/// SseAwsKmsKeyId = test.Arn,
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
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/glue"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := glue.NewDataCatalogEncryptionSettings(ctx, "example", &glue.DataCatalogEncryptionSettingsArgs{
/// DataCatalogEncryptionSettings: &glue.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsArgs{
/// ConnectionPasswordEncryption: &glue.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryptionArgs{
/// AwsKmsKeyId:                       pulumi.Any(test.Arn),
/// ReturnConnectionPasswordEncrypted: pulumi.Bool(true),
/// },
/// EncryptionAtRest: &glue.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRestArgs{
/// CatalogEncryptionMode:        pulumi.String("SSE-KMS"),
/// CatalogEncryptionServiceRole: pulumi.Any(role.Test.Arn),
/// SseAwsKmsKeyId:               pulumi.Any(test.Arn),
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
/// import com.pulumi.aws.glue.DataCatalogEncryptionSettings;
/// import com.pulumi.aws.glue.DataCatalogEncryptionSettingsArgs;
/// import com.pulumi.aws.glue.inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsArgs;
/// import com.pulumi.aws.glue.inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryptionArgs;
/// import com.pulumi.aws.glue.inputs.DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRestArgs;
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
/// var example = new DataCatalogEncryptionSettings("example", DataCatalogEncryptionSettingsArgs.builder()
/// .dataCatalogEncryptionSettings(DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsArgs.builder()
/// .connectionPasswordEncryption(DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsConnectionPasswordEncryptionArgs.builder()
/// .awsKmsKeyId(test.arn())
/// .returnConnectionPasswordEncrypted(true)
/// .build())
/// .encryptionAtRest(DataCatalogEncryptionSettingsDataCatalogEncryptionSettingsEncryptionAtRestArgs.builder()
/// .catalogEncryptionMode("SSE-KMS")
/// .catalogEncryptionServiceRole(role.test().arn())
/// .sseAwsKmsKeyId(test.arn())
/// .build())
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:glue:DataCatalogEncryptionSettings
/// properties:
/// dataCatalogEncryptionSettings:
/// connectionPasswordEncryption:
/// awsKmsKeyId: ${test.arn}
/// returnConnectionPasswordEncrypted: true
/// encryptionAtRest:
/// catalogEncryptionMode: SSE-KMS
/// catalogEncryptionServiceRole: ${role.test.arn}
/// sseAwsKmsKeyId: ${test.arn}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import Glue Data Catalog Encryption Settings using `CATALOG-ID` (AWS account ID if not custom). For example:
///
/// ```sh
/// $ pulumi import aws:glue/dataCatalogEncryptionSettings:DataCatalogEncryptionSettings example 123456789012
/// ```
class DataCatalogEncryptionSettings extends CustomResource {
  /// The ID of the Data Catalog to set the security configuration for. If none is provided, the AWS account ID is used by default.
  late final Output<String> catalogId;

  /// The security configuration to set. see Data Catalog Encryption Settings.
  late final Output<DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>
      dataCatalogEncryptionSettings;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  DataCatalogEncryptionSettings(
    String name, {
    DataCatalogEncryptionSettingsArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:glue/dataCatalogEncryptionSettings:DataCatalogEncryptionSettings',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.catalogId = Output.createUnknown<String>();
    this.dataCatalogEncryptionSettings = Output.createUnknown<
        DataCatalogEncryptionSettingsDataCatalogEncryptionSettings>();
    this.region = Output.createUnknown<String>();
  }
}
