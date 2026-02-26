import 'package:pulumi/pulumi.dart';
import '../form_type_import/form_type_import.dart';
import '../form_type_model/form_type_model.dart';
import '../form_type_timeouts/form_type_timeouts.dart';
import 'form_type_args.dart';

/// Resource for managing an AWS DataZone Form Type.
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
/// const domainExecutionRole = new aws.iam.Role("domain_execution_role", {
/// name: "example-role",
/// assumeRolePolicy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [
/// {
/// Action: [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// Effect: "Allow",
/// Principal: {
/// Service: "datazone.amazonaws.com",
/// },
/// },
/// {
/// Action: [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// Effect: "Allow",
/// Principal: {
/// Service: "cloudformation.amazonaws.com",
/// },
/// },
/// ],
/// }),
/// inlinePolicies: [{
/// name: "example-policy",
/// policy: JSON.stringify({
/// Version: "2012-10-17",
/// Statement: [{
/// Action: [
/// "datazone:*",
/// "ram:*",
/// "sso:*",
/// "kms:*",
/// ],
/// Effect: "Allow",
/// Resource: "*",
/// }],
/// }),
/// }],
/// });
/// const test = new aws.datazone.Domain("test", {
/// name: "example",
/// domainExecutionRole: domainExecutionRole.arn,
/// });
/// const testSecurityGroup = new aws.ec2.SecurityGroup("test", {name: "example"});
/// const testProject = new aws.datazone.Project("test", {
/// domainIdentifier: test.id,
/// glossaryTerms: ["2N8w6XJCwZf"],
/// name: "example name",
/// description: "desc",
/// skipDeletionCheck: true,
/// });
/// const testFormType = new aws.datazone.FormType("test", {
/// description: "desc",
/// name: "SageMakerModelFormType",
/// domainIdentifier: test.id,
/// owningProjectIdentifier: testProject.id,
/// status: "DISABLED",
/// model: {
/// smithy: `\\tstructure SageMakerModelFormType {
/// \\t\\t\\t@required
/// \\t\\t\\t@amazon.datazone#searchable
/// \\t\\t\\tmodelName: String
///
/// \\t\\t\\t@required
/// \\t\\t\\tmodelArn: String
///
/// \\t\\t\\t@required
/// \\t\\t\\tcreationTime: String
/// \\t\\t\\t}
/// `,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// domain_execution_role = aws.iam.Role("domain_execution_role",
/// name="example-role",
/// assume_role_policy=json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [
/// {
/// "Action": [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "datazone.amazonaws.com",
/// },
/// },
/// {
/// "Action": [
/// "sts:AssumeRole",
/// "sts:TagSession",
/// ],
/// "Effect": "Allow",
/// "Principal": {
/// "Service": "cloudformation.amazonaws.com",
/// },
/// },
/// ],
/// }),
/// inline_policies=[{
/// "name": "example-policy",
/// "policy": json.dumps({
/// "Version": "2012-10-17",
/// "Statement": [{
/// "Action": [
/// "datazone:*",
/// "ram:*",
/// "sso:*",
/// "kms:*",
/// ],
/// "Effect": "Allow",
/// "Resource": "*",
/// }],
/// }),
/// }])
/// test = aws.datazone.Domain("test",
/// name="example",
/// domain_execution_role=domain_execution_role.arn)
/// test_security_group = aws.ec2.SecurityGroup("test", name="example")
/// test_project = aws.datazone.Project("test",
/// domain_identifier=test.id,
/// glossary_terms=["2N8w6XJCwZf"],
/// name="example name",
/// description="desc",
/// skip_deletion_check=True)
/// test_form_type = aws.datazone.FormType("test",
/// description="desc",
/// name="SageMakerModelFormType",
/// domain_identifier=test.id,
/// owning_project_identifier=test_project.id,
/// status="DISABLED",
/// model={
/// "smithy": """\tstructure SageMakerModelFormType {
/// \t\t\t@required
/// \t\t\t@amazon.datazone#searchable
/// \t\t\tmodelName: String
///
/// \t\t\t@required
/// \t\t\tmodelArn: String
///
/// \t\t\t@required
/// \t\t\tcreationTime: String
/// \t\t\t}
/// """,
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var domainExecutionRole = new Aws.Iam.Role("domain_execution_role", new()
/// {
/// Name = "example-role",
/// AssumeRolePolicy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "datazone.amazonaws.com",
/// },
/// },
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// ["Effect"] = "Allow",
/// ["Principal"] = new Dictionary<string, object?>
/// {
/// ["Service"] = "cloudformation.amazonaws.com",
/// },
/// },
/// },
/// }),
/// InlinePolicies = new[]
/// {
/// new Aws.Iam.Inputs.RoleInlinePolicyArgs
/// {
/// Name = "example-policy",
/// Policy = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2012-10-17",
/// ["Statement"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Action"] = new[]
/// {
/// "datazone:*",
/// "ram:*",
/// "sso:*",
/// "kms:*",
/// },
/// ["Effect"] = "Allow",
/// ["Resource"] = "*",
/// },
/// },
/// }),
/// },
/// },
/// });
///
/// var test = new Aws.DataZone.Domain("test", new()
/// {
/// Name = "example",
/// DomainExecutionRole = domainExecutionRole.Arn,
/// });
///
/// var testSecurityGroup = new Aws.Ec2.SecurityGroup("test", new()
/// {
/// Name = "example",
/// });
///
/// var testProject = new Aws.DataZone.Project("test", new()
/// {
/// DomainIdentifier = test.Id,
/// GlossaryTerms = new[]
/// {
/// "2N8w6XJCwZf",
/// },
/// Name = "example name",
/// Description = "desc",
/// SkipDeletionCheck = true,
/// });
///
/// var testFormType = new Aws.DataZone.FormType("test", new()
/// {
/// Description = "desc",
/// Name = "SageMakerModelFormType",
/// DomainIdentifier = test.Id,
/// OwningProjectIdentifier = testProject.Id,
/// Status = "DISABLED",
/// Model = new Aws.DataZone.Inputs.FormTypeModelArgs
/// {
/// Smithy = @"\tstructure SageMakerModelFormType {
/// \t\t\t@required
/// \t\t\t@amazon.datazone#searchable
/// \t\t\tmodelName: String
///
/// \t\t\t@required
/// \t\t\tmodelArn: String
///
/// \t\t\t@required
/// \t\t\tcreationTime: String
/// \t\t\t}
/// ",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datazone"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/iam"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "datazone.amazonaws.com",
/// },
/// },
/// map[string]interface{}{
/// "Action": []string{
/// "sts:AssumeRole",
/// "sts:TagSession",
/// },
/// "Effect": "Allow",
/// "Principal": map[string]interface{}{
/// "Service": "cloudformation.amazonaws.com",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// tmpJSON1, err := json.Marshal(map[string]interface{}{
/// "Version": "2012-10-17",
/// "Statement": []map[string]interface{}{
/// map[string]interface{}{
/// "Action": []string{
/// "datazone:*",
/// "ram:*",
/// "sso:*",
/// "kms:*",
/// },
/// "Effect":   "Allow",
/// "Resource": "*",
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json1 := string(tmpJSON1)
/// domainExecutionRole, err := iam.NewRole(ctx, "domain_execution_role", &iam.RoleArgs{
/// Name:             pulumi.String("example-role"),
/// AssumeRolePolicy: pulumi.String(json0),
/// InlinePolicies: iam.RoleInlinePolicyArray{
/// &iam.RoleInlinePolicyArgs{
/// Name:   pulumi.String("example-policy"),
/// Policy: pulumi.String(json1),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// test, err := datazone.NewDomain(ctx, "test", &datazone.DomainArgs{
/// Name:                pulumi.String("example"),
/// DomainExecutionRole: domainExecutionRole.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSecurityGroup(ctx, "test", &ec2.SecurityGroupArgs{
/// Name: pulumi.String("example"),
/// })
/// if err != nil {
/// return err
/// }
/// testProject, err := datazone.NewProject(ctx, "test", &datazone.ProjectArgs{
/// DomainIdentifier: test.ID(),
/// GlossaryTerms: pulumi.StringArray{
/// pulumi.String("2N8w6XJCwZf"),
/// },
/// Name:              pulumi.String("example name"),
/// Description:       pulumi.String("desc"),
/// SkipDeletionCheck: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datazone.NewFormType(ctx, "test", &datazone.FormTypeArgs{
/// Description:             pulumi.String("desc"),
/// Name:                    pulumi.String("SageMakerModelFormType"),
/// DomainIdentifier:        test.ID(),
/// OwningProjectIdentifier: testProject.ID(),
/// Status:                  pulumi.String("DISABLED"),
/// Model: &datazone.FormTypeModelArgs{
/// Smithy: pulumi.String(`\tstructure SageMakerModelFormType {
/// \t\t\t@required
/// \t\t\t@amazon.datazone#searchable
/// \t\t\tmodelName: String
///
/// \t\t\t@required
/// \t\t\tmodelArn: String
///
/// \t\t\t@required
/// \t\t\tcreationTime: String
/// \t\t\t}
/// `),
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
/// import com.pulumi.aws.iam.Role;
/// import com.pulumi.aws.iam.RoleArgs;
/// import com.pulumi.aws.iam.inputs.RoleInlinePolicyArgs;
/// import com.pulumi.aws.datazone.Domain;
/// import com.pulumi.aws.datazone.DomainArgs;
/// import com.pulumi.aws.ec2.SecurityGroup;
/// import com.pulumi.aws.ec2.SecurityGroupArgs;
/// import com.pulumi.aws.datazone.Project;
/// import com.pulumi.aws.datazone.ProjectArgs;
/// import com.pulumi.aws.datazone.FormType;
/// import com.pulumi.aws.datazone.FormTypeArgs;
/// import com.pulumi.aws.datazone.inputs.FormTypeModelArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var domainExecutionRole = new Role("domainExecutionRole", RoleArgs.builder()
/// .name("example-role")
/// .assumeRolePolicy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(
/// jsonObject(
/// jsonProperty("Action", jsonArray(
/// "sts:AssumeRole",
/// "sts:TagSession"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "datazone.amazonaws.com")
/// ))
/// ),
/// jsonObject(
/// jsonProperty("Action", jsonArray(
/// "sts:AssumeRole",
/// "sts:TagSession"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Principal", jsonObject(
/// jsonProperty("Service", "cloudformation.amazonaws.com")
/// ))
/// )
/// ))
/// )))
/// .inlinePolicies(RoleInlinePolicyArgs.builder()
/// .name("example-policy")
/// .policy(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2012-10-17"),
/// jsonProperty("Statement", jsonArray(jsonObject(
/// jsonProperty("Action", jsonArray(
/// "datazone:*",
/// "ram:*",
/// "sso:*",
/// "kms:*"
/// )),
/// jsonProperty("Effect", "Allow"),
/// jsonProperty("Resource", "*")
/// )))
/// )))
/// .build())
/// .build());
///
/// var test = new Domain("test", DomainArgs.builder()
/// .name("example")
/// .domainExecutionRole(domainExecutionRole.arn())
/// .build());
///
/// var testSecurityGroup = new SecurityGroup("testSecurityGroup", SecurityGroupArgs.builder()
/// .name("example")
/// .build());
///
/// var testProject = new Project("testProject", ProjectArgs.builder()
/// .domainIdentifier(test.id())
/// .glossaryTerms("2N8w6XJCwZf")
/// .name("example name")
/// .description("desc")
/// .skipDeletionCheck(true)
/// .build());
///
/// var testFormType = new FormType("testFormType", FormTypeArgs.builder()
/// .description("desc")
/// .name("SageMakerModelFormType")
/// .domainIdentifier(test.id())
/// .owningProjectIdentifier(testProject.id())
/// .status("DISABLED")
/// .model(FormTypeModelArgs.builder()
/// .smithy("""
/// \tstructure SageMakerModelFormType {
/// \t\t\t@required
/// \t\t\t@amazon.datazone#searchable
/// \t\t\tmodelName: String
///
/// \t\t\t@required
/// \t\t\tmodelArn: String
///
/// \t\t\t@required
/// \t\t\tcreationTime: String
/// \t\t\t}
/// """)
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// domainExecutionRole:
/// type: aws:iam:Role
/// name: domain_execution_role
/// properties:
/// name: example-role
/// assumeRolePolicy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - sts:AssumeRole
/// - sts:TagSession
/// Effect: Allow
/// Principal:
/// Service: datazone.amazonaws.com
/// - Action:
/// - sts:AssumeRole
/// - sts:TagSession
/// Effect: Allow
/// Principal:
/// Service: cloudformation.amazonaws.com
/// inlinePolicies:
/// - name: example-policy
/// policy:
/// fn::toJSON:
/// Version: 2012-10-17
/// Statement:
/// - Action:
/// - datazone:*
/// - ram:*
/// - sso:*
/// - kms:*
/// Effect: Allow
/// Resource: '*'
/// test:
/// type: aws:datazone:Domain
/// properties:
/// name: example
/// domainExecutionRole: ${domainExecutionRole.arn}
/// testSecurityGroup:
/// type: aws:ec2:SecurityGroup
/// name: test
/// properties:
/// name: example
/// testProject:
/// type: aws:datazone:Project
/// name: test
/// properties:
/// domainIdentifier: ${test.id}
/// glossaryTerms:
/// - 2N8w6XJCwZf
/// name: example name
/// description: desc
/// skipDeletionCheck: true
/// testFormType:
/// type: aws:datazone:FormType
/// name: test
/// properties:
/// description: desc
/// name: SageMakerModelFormType
/// domainIdentifier: ${test.id}
/// owningProjectIdentifier: ${testProject.id}
/// status: DISABLED
/// model:
/// smithy: |
/// \tstructure SageMakerModelFormType {
/// \t\t\t@required
/// \t\t\t@amazon.datazone#searchable
/// \t\t\tmodelName: String
///
/// \t\t\t@required
/// \t\t\tmodelArn: String
///
/// \t\t\t@required
/// \t\t\tcreationTime: String
/// \t\t\t}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Form Type using a comma separated value of <span pulumi-lang-nodejs="`domainIdentifier`" pulumi-lang-dotnet="`DomainIdentifier`" pulumi-lang-go="`domainIdentifier`" pulumi-lang-python="`domain_identifier`" pulumi-lang-yaml="`domainIdentifier`" pulumi-lang-java="`domainIdentifier`">`domain_identifier`</span>,<span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>,<span pulumi-lang-nodejs="`revision`" pulumi-lang-dotnet="`Revision`" pulumi-lang-go="`revision`" pulumi-lang-python="`revision`" pulumi-lang-yaml="`revision`" pulumi-lang-java="`revision`">`revision`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/formType:FormType example domain_identifier,name,revision
/// ```
class FormType extends CustomResource {
  /// Creation time of the Form Type.
  late final Output<String> createdAt;

  /// Creator of the Form Type.
  late final Output<String> createdBy;

  /// Description of form type. Must have a length of between 1 and 2048 characters.
  late final Output<String?> description;

  /// Identifier of the domain.
  late final Output<String> domainIdentifier;
  late final Output<List<FormTypeImport>> imports;

  /// Object of the model of the form type that contains the following attributes.
  late final Output<FormTypeModel> model;

  /// Name of the form type. Must be the name of the structure in smithy document.
  late final Output<String> name;

  /// Origin domain id of the Form Type.
  late final Output<String> originDomainId;

  /// Origin project id of the Form Type.
  late final Output<String> originProjectId;

  /// Identifier of project that owns the form type. Must follow regex of ^[a-zA-Z0-9_-]{1,36}.
  late final Output<String> owningProjectIdentifier;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Revision of the Form Type.
  late final Output<String> revision;

  /// Status of form type. Must be "ENABLED" or "DISABLED" If status is set to "ENABLED" terraform cannot delete the resource until it is manually changed in the AWS console.
  late final Output<String> status;
  late final Output<FormTypeTimeouts?> timeouts;

  FormType(
    String name, {
    FormTypeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/formType:FormType',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = registerOutput<String>('createdAt');
    this.createdBy = registerOutput<String>('createdBy');
    this.description = registerOutput<String?>('description');
    this.domainIdentifier = registerOutput<String>('domainIdentifier');
    this.imports = registerOutput<List<FormTypeImport>>('imports');
    this.model = registerOutput<FormTypeModel>('model');
    this.name = registerOutput<String>('name');
    this.originDomainId = registerOutput<String>('originDomainId');
    this.originProjectId = registerOutput<String>('originProjectId');
    this.owningProjectIdentifier =
        registerOutput<String>('owningProjectIdentifier');
    this.region = registerOutput<String>('region');
    this.revision = registerOutput<String>('revision');
    this.status = registerOutput<String>('status');
    this.timeouts = registerOutput<FormTypeTimeouts?>('timeouts');
  }
}
