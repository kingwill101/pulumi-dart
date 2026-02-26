import 'package:pulumi/pulumi.dart';
import '../glossary_term_term_relations/glossary_term_term_relations.dart';
import '../glossary_term_timeouts/glossary_term_timeouts.dart';
import 'glossary_term_args.dart';

/// Resource for managing an AWS DataZone Glossary Term.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.iam.Role("example", {
/// name: "example",
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
/// name: "example",
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
/// const exampleDomain = new aws.datazone.Domain("example", {
/// name: "example_name",
/// domainExecutionRole: example.arn,
/// });
/// const exampleSecurityGroup = new aws.ec2.SecurityGroup("example", {name: "example_name"});
/// const exampleProject = new aws.datazone.Project("example", {
/// domainIdentifier: exampleDomain.id,
/// glossaryTerms: ["2N8w6XJCwZf"],
/// name: "example",
/// skipDeletionCheck: true,
/// });
/// const exampleGlossary = new aws.datazone.Glossary("example", {
/// description: "description",
/// name: "example",
/// owningProjectIdentifier: exampleProject.id,
/// status: "ENABLED",
/// domainIdentifier: exampleProject.domainIdentifier,
/// });
/// const exampleGlossaryTerm = new aws.datazone.GlossaryTerm("example", {
/// domainIdentifier: exampleDomain.id,
/// glossaryIdentifier: exampleGlossary.id,
/// name: "example",
/// status: "ENABLED",
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.iam.Role("example",
/// name="example",
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
/// "name": "example",
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
/// example_domain = aws.datazone.Domain("example",
/// name="example_name",
/// domain_execution_role=example.arn)
/// example_security_group = aws.ec2.SecurityGroup("example", name="example_name")
/// example_project = aws.datazone.Project("example",
/// domain_identifier=example_domain.id,
/// glossary_terms=["2N8w6XJCwZf"],
/// name="example",
/// skip_deletion_check=True)
/// example_glossary = aws.datazone.Glossary("example",
/// description="description",
/// name="example",
/// owning_project_identifier=example_project.id,
/// status="ENABLED",
/// domain_identifier=example_project.domain_identifier)
/// example_glossary_term = aws.datazone.GlossaryTerm("example",
/// domain_identifier=example_domain.id,
/// glossary_identifier=example_glossary.id,
/// name="example",
/// status="ENABLED")
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
/// var example = new Aws.Iam.Role("example", new()
/// {
/// Name = "example",
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
/// Name = "example",
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
/// var exampleDomain = new Aws.DataZone.Domain("example", new()
/// {
/// Name = "example_name",
/// DomainExecutionRole = example.Arn,
/// });
///
/// var exampleSecurityGroup = new Aws.Ec2.SecurityGroup("example", new()
/// {
/// Name = "example_name",
/// });
///
/// var exampleProject = new Aws.DataZone.Project("example", new()
/// {
/// DomainIdentifier = exampleDomain.Id,
/// GlossaryTerms = new[]
/// {
/// "2N8w6XJCwZf",
/// },
/// Name = "example",
/// SkipDeletionCheck = true,
/// });
///
/// var exampleGlossary = new Aws.DataZone.Glossary("example", new()
/// {
/// Description = "description",
/// Name = "example",
/// OwningProjectIdentifier = exampleProject.Id,
/// Status = "ENABLED",
/// DomainIdentifier = exampleProject.DomainIdentifier,
/// });
///
/// var exampleGlossaryTerm = new Aws.DataZone.GlossaryTerm("example", new()
/// {
/// DomainIdentifier = exampleDomain.Id,
/// GlossaryIdentifier = exampleGlossary.Id,
/// Name = "example",
/// Status = "ENABLED",
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
/// example, err := iam.NewRole(ctx, "example", &iam.RoleArgs{
/// Name:             pulumi.String("example"),
/// AssumeRolePolicy: pulumi.String(json0),
/// InlinePolicies: iam.RoleInlinePolicyArray{
/// &iam.RoleInlinePolicyArgs{
/// Name:   pulumi.String("example"),
/// Policy: pulumi.String(json1),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleDomain, err := datazone.NewDomain(ctx, "example", &datazone.DomainArgs{
/// Name:                pulumi.String("example_name"),
/// DomainExecutionRole: example.Arn,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSecurityGroup(ctx, "example", &ec2.SecurityGroupArgs{
/// Name: pulumi.String("example_name"),
/// })
/// if err != nil {
/// return err
/// }
/// exampleProject, err := datazone.NewProject(ctx, "example", &datazone.ProjectArgs{
/// DomainIdentifier: exampleDomain.ID(),
/// GlossaryTerms: pulumi.StringArray{
/// pulumi.String("2N8w6XJCwZf"),
/// },
/// Name:              pulumi.String("example"),
/// SkipDeletionCheck: pulumi.Bool(true),
/// })
/// if err != nil {
/// return err
/// }
/// exampleGlossary, err := datazone.NewGlossary(ctx, "example", &datazone.GlossaryArgs{
/// Description:             pulumi.String("description"),
/// Name:                    pulumi.String("example"),
/// OwningProjectIdentifier: exampleProject.ID(),
/// Status:                  pulumi.String("ENABLED"),
/// DomainIdentifier:        exampleProject.DomainIdentifier,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = datazone.NewGlossaryTerm(ctx, "example", &datazone.GlossaryTermArgs{
/// DomainIdentifier:   exampleDomain.ID(),
/// GlossaryIdentifier: exampleGlossary.ID(),
/// Name:               pulumi.String("example"),
/// Status:             pulumi.String("ENABLED"),
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
/// import com.pulumi.aws.datazone.Glossary;
/// import com.pulumi.aws.datazone.GlossaryArgs;
/// import com.pulumi.aws.datazone.GlossaryTerm;
/// import com.pulumi.aws.datazone.GlossaryTermArgs;
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
/// var example = new Role("example", RoleArgs.builder()
/// .name("example")
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
/// .name("example")
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
/// var exampleDomain = new Domain("exampleDomain", DomainArgs.builder()
/// .name("example_name")
/// .domainExecutionRole(example.arn())
/// .build());
///
/// var exampleSecurityGroup = new SecurityGroup("exampleSecurityGroup", SecurityGroupArgs.builder()
/// .name("example_name")
/// .build());
///
/// var exampleProject = new Project("exampleProject", ProjectArgs.builder()
/// .domainIdentifier(exampleDomain.id())
/// .glossaryTerms("2N8w6XJCwZf")
/// .name("example")
/// .skipDeletionCheck(true)
/// .build());
///
/// var exampleGlossary = new Glossary("exampleGlossary", GlossaryArgs.builder()
/// .description("description")
/// .name("example")
/// .owningProjectIdentifier(exampleProject.id())
/// .status("ENABLED")
/// .domainIdentifier(exampleProject.domainIdentifier())
/// .build());
///
/// var exampleGlossaryTerm = new GlossaryTerm("exampleGlossaryTerm", GlossaryTermArgs.builder()
/// .domainIdentifier(exampleDomain.id())
/// .glossaryIdentifier(exampleGlossary.id())
/// .name("example")
/// .status("ENABLED")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:iam:Role
/// properties:
/// name: example
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
/// - name: example
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
/// exampleDomain:
/// type: aws:datazone:Domain
/// name: example
/// properties:
/// name: example_name
/// domainExecutionRole: ${example.arn}
/// exampleSecurityGroup:
/// type: aws:ec2:SecurityGroup
/// name: example
/// properties:
/// name: example_name
/// exampleProject:
/// type: aws:datazone:Project
/// name: example
/// properties:
/// domainIdentifier: ${exampleDomain.id}
/// glossaryTerms:
/// - 2N8w6XJCwZf
/// name: example
/// skipDeletionCheck: true
/// exampleGlossary:
/// type: aws:datazone:Glossary
/// name: example
/// properties:
/// description: description
/// name: example
/// owningProjectIdentifier: ${exampleProject.id}
/// status: ENABLED
/// domainIdentifier: ${exampleProject.domainIdentifier}
/// exampleGlossaryTerm:
/// type: aws:datazone:GlossaryTerm
/// name: example
/// properties:
/// domainIdentifier: ${exampleDomain.id}
/// glossaryIdentifier: ${exampleGlossary.id}
/// name: example
/// status: ENABLED
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import DataZone Glossary Term using a comma-delimited string combining the <span pulumi-lang-nodejs="`domainIdentifier`" pulumi-lang-dotnet="`DomainIdentifier`" pulumi-lang-go="`domainIdentifier`" pulumi-lang-python="`domain_identifier`" pulumi-lang-yaml="`domainIdentifier`" pulumi-lang-java="`domainIdentifier`">`domain_identifier`</span>, <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>, and the <span pulumi-lang-nodejs="`glossaryIdentifier`" pulumi-lang-dotnet="`GlossaryIdentifier`" pulumi-lang-go="`glossaryIdentifier`" pulumi-lang-python="`glossary_identifier`" pulumi-lang-yaml="`glossaryIdentifier`" pulumi-lang-java="`glossaryIdentifier`">`glossary_identifier`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:datazone/glossaryTerm:GlossaryTerm example domain-id,glossary-term-id,glossary-id
/// ```
class GlossaryTerm extends CustomResource {
  /// Time of glossary term creation.
  late final Output<String> createdAt;

  /// Creator of glossary term.
  late final Output<String> createdBy;

  /// Identifier of domain.
  late final Output<String?> domainIdentifier;

  /// Identifier of glossary.
  late final Output<String> glossaryIdentifier;

  /// Long description of entry.
  late final Output<String?> longDescription;

  /// Name of glossary term.
  ///
  /// The following arguments are optional:
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Short description of entry.
  late final Output<String?> shortDescription;

  /// If glossary term is ENABLED or DISABLED.
  late final Output<String?> status;

  /// Object classifying the term relations through the following attributes:
  late final Output<GlossaryTermTermRelations?> termRelations;
  late final Output<GlossaryTermTimeouts?> timeouts;

  GlossaryTerm(
    String name, {
    GlossaryTermArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datazone/glossaryTerm:GlossaryTerm',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createdAt = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.domainIdentifier = Output.createUnknown<String?>();
    this.glossaryIdentifier = Output.createUnknown<String>();
    this.longDescription = Output.createUnknown<String?>();
    this.name = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.shortDescription = Output.createUnknown<String?>();
    this.status = Output.createUnknown<String?>();
    this.termRelations = Output.createUnknown<GlossaryTermTermRelations?>();
    this.timeouts = Output.createUnknown<GlossaryTermTimeouts?>();
  }
}
