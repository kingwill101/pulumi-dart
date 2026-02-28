import 'package:pulumi/pulumi.dart' as pulumi;
import 'scraper_args.dart';
import 'scraper_destination.dart';
import 'scraper_role_configuration.dart';
import 'scraper_source.dart';
import 'scraper_timeouts.dart';

/// > **Note:** If you change a Scraper's source (EKS cluster), Terraform
/// will delete the current Scraper and create a new one.
///
/// Provides an Amazon Managed Service for Prometheus fully managed collector
/// (scraper).
///
/// Read more in the [Amazon Managed Service for Prometheus user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector.html).
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     scrapeConfiguration: `global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\\\\\:\\\\\\\\d+)?
///       replacement: 1:10249
/// `,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     scrape_configuration="""global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         ScrapeConfiguration = @"global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String(`global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
/// `),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration("""
/// global:
///   scrape_interval: 30s
/// scrape_configs:
///   # pod metrics
///   - job_name: pod_exporter
///     kubernetes_sd_configs:
///       - role: pod
///   # container metrics
///   - job_name: cadvisor
///     scheme: https
///     authorization:
///       credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     kubernetes_sd_configs:
///       - role: node
///     relabel_configs:
///       - action: labelmap
///         regex: __meta_kubernetes_node_label_(.+)
///       - replacement: kubernetes.default.svc:443
///         target_label: __address__
///       - source_labels: [__meta_kubernetes_node_name]
///         regex: (.+)
///         target_label: __metrics_path__
///         replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///   # apiserver metrics
///   - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///     job_name: kubernetes-apiservers
///     kubernetes_sd_configs:
///     - role: endpoints
///     relabel_configs:
///     - action: keep
///       regex: default;kubernetes;https
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_service_name
///       - __meta_kubernetes_endpoint_port_name
///     scheme: https
///   # kube proxy metrics
///   - job_name: kube-proxy
///     honor_labels: true
///     kubernetes_sd_configs:
///     - role: pod
///     relabel_configs:
///     - action: keep
///       source_labels:
///       - __meta_kubernetes_namespace
///       - __meta_kubernetes_pod_name
///       separator: '/'
///       regex: 'kube-system/kube-proxy.+'
///     - source_labels:
///       - __address__
///       action: replace
///       target_label: __address__
///       regex: (.+?)(\\\\:\\\\d+)?
///       replacement: $1:10249
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       scrapeConfiguration: |
///         global:
///           scrape_interval: 30s
///         scrape_configs:
///           # pod metrics
///           - job_name: pod_exporter
///             kubernetes_sd_configs:
///               - role: pod
///           # container metrics
///           - job_name: cadvisor
///             scheme: https
///             authorization:
///               credentials_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///             kubernetes_sd_configs:
///               - role: node
///             relabel_configs:
///               - action: labelmap
///                 regex: __meta_kubernetes_node_label_(.+)
///               - replacement: kubernetes.default.svc:443
///                 target_label: __address__
///               - source_labels: [__meta_kubernetes_node_name]
///                 regex: (.+)
///                 target_label: __metrics_path__
///                 replacement: /api/v1/nodes/$1/proxy/metrics/cadvisor
///           # apiserver metrics
///           - bearer_token_file: /var/run/secrets/kubernetes.io/serviceaccount/token
///             job_name: kubernetes-apiservers
///             kubernetes_sd_configs:
///             - role: endpoints
///             relabel_configs:
///             - action: keep
///               regex: default;kubernetes;https
///               source_labels:
///               - __meta_kubernetes_namespace
///               - __meta_kubernetes_service_name
///               - __meta_kubernetes_endpoint_port_name
///             scheme: https
///           # kube proxy metrics
///           - job_name: kube-proxy
///             honor_labels: true
///             kubernetes_sd_configs:
///             - role: pod
///             relabel_configs:
///             - action: keep
///               source_labels:
///               - __meta_kubernetes_namespace
///               - __meta_kubernetes_pod_name
///               separator: '/'
///               regex: 'kube-system/kube-proxy.+'
///             - source_labels:
///               - __address__
///               action: replace
///               target_label: __address__
///               regex: (.+?)(\\\\:\\\\d+)?
///               replacement: $1:10249
/// ```
///
///
/// ### Use default EKS scraper configuration
///
/// You can use the data source `aws_prometheus_scraper_configuration` to use a
/// service managed scrape configuration.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.amp.getDefaultScraperConfiguration({});
/// const exampleScraper = new aws.amp.Scraper("example", {
///     destination: {
///         amp: {
///             workspaceArn: exampleAwsPrometheusWorkspace.arn,
///         },
///     },
///     scrapeConfiguration: exampleAwsPrometheusScraperConfiguration.configuration,
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.get_default_scraper_configuration()
/// example_scraper = aws.amp.Scraper("example",
///     destination={
///         "amp": {
///             "workspace_arn": example_aws_prometheus_workspace["arn"],
///         },
///     },
///     scrape_configuration=example_aws_prometheus_scraper_configuration["configuration"],
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = Aws.Amp.GetDefaultScraperConfiguration.Invoke();
///
///     var exampleScraper = new Aws.Amp.Scraper("example", new()
///     {
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = exampleAwsPrometheusWorkspace.Arn,
///             },
///         },
///         ScrapeConfiguration = exampleAwsPrometheusScraperConfiguration.Configuration,
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.GetDefaultScraperConfiguration(ctx, &amp.GetDefaultScraperConfigurationArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.Any(exampleAwsPrometheusWorkspace.Arn),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.Any(exampleAwsPrometheusScraperConfiguration.Configuration),
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.AmpFunctions;
/// import com.pulumi.aws.amp.inputs.GetDefaultScraperConfigurationArgs;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var example = AmpFunctions.getDefaultScraperConfiguration(GetDefaultScraperConfigurationArgs.builder()
///             .build());
///
///         var exampleScraper = new Scraper("exampleScraper", ScraperArgs.builder()
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(exampleAwsPrometheusWorkspace.arn())
///                     .build())
///                 .build())
///             .scrapeConfiguration(exampleAwsPrometheusScraperConfiguration.configuration())
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleScraper:
///     type: aws:amp:Scraper
///     name: example
///     properties:
///       destination:
///         amp:
///           workspaceArn: ${exampleAwsPrometheusWorkspace.arn}
///       scrapeConfiguration: ${exampleAwsPrometheusScraperConfiguration.configuration}
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
/// variables:
///   example:
///     fn::invoke:
///       function: aws:amp:getDefaultScraperConfiguration
///       arguments: {}
/// ```
///
///
/// ### Ignoring changes to Prometheus Workspace destination
///
/// A managed scraper will add a `AMPAgentlessScraper` tag to its Prometheus workspace
/// destination. To avoid Terraform state forcing removing the tag from the workspace,
/// you can add this tag to the destination workspace (preferred) or ignore tags
/// changes with `lifecycle`. See example below.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _this = aws.eks.getCluster({
///     name: "example",
/// });
/// const example = new aws.amp.Workspace("example", {tags: {
///     AMPAgentlessScraper: "",
/// }});
/// const exampleScraper = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     scrapeConfiguration: "...",
///     destination: {
///         amp: {
///             workspaceArn: example.arn,
///         },
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// this = aws.eks.get_cluster(name="example")
/// example = aws.amp.Workspace("example", tags={
///     "AMPAgentlessScraper": "",
/// })
/// example_scraper = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     scrape_configuration="...",
///     destination={
///         "amp": {
///             "workspace_arn": example.arn,
///         },
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @this = Aws.Eks.GetCluster.Invoke(new()
///     {
///         Name = "example",
///     });
///
///     var example = new Aws.Amp.Workspace("example", new()
///     {
///         Tags =
///         {
///             { "AMPAgentlessScraper", "" },
///         },
///     });
///
///     var exampleScraper = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         ScrapeConfiguration = "...",
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = example.Arn,
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
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/eks"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eks.LookupCluster(ctx, &eks.LookupClusterArgs{
/// 			Name: "example",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		example, err := amp.NewWorkspace(ctx, "example", &amp.WorkspaceArgs{
/// 			Tags: pulumi.StringMap{
/// 				"AMPAgentlessScraper": pulumi.String(""),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			ScrapeConfiguration: pulumi.String("..."),
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: example.Arn,
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.eks.EksFunctions;
/// import com.pulumi.aws.eks.inputs.GetClusterArgs;
/// import com.pulumi.aws.amp.Workspace;
/// import com.pulumi.aws.amp.WorkspaceArgs;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         final var this = EksFunctions.getCluster(GetClusterArgs.builder()
///             .name("example")
///             .build());
///
///         var example = new Workspace("example", WorkspaceArgs.builder()
///             .tags(Map.of("AMPAgentlessScraper", ""))
///             .build());
///
///         var exampleScraper = new Scraper("exampleScraper", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .scrapeConfiguration("...")
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn(example.arn())
///                     .build())
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Workspace
///     properties:
///       tags:
///         AMPAgentlessScraper: ""
///   exampleScraper:
///     type: aws:amp:Scraper
///     name: example
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       scrapeConfiguration: '...'
///       destination:
///         amp:
///           workspaceArn: ${example.arn}
/// variables:
///   this:
///     fn::invoke:
///       function: aws:eks:getCluster
///       arguments:
///         name: example
/// ```
///
///
/// ### Configure aws-auth
///
/// Your source Amazon EKS cluster must be configured to allow the scraper to access
/// metrics. Follow the [user guide](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-eks-setup)
/// to setup the appropriate Kubernetes permissions.
///
/// ### Cross-Account Configuration
///
/// This setup allows the scraper, running in a source account, to remote write its collected metrics to a workspace in a target account. Note that:
///
/// - The target Role and target Workspace must be in the same account
/// - The source Scraper and target Workspace must be in the same Region
///
/// Follow [the AWS Best Practices guide](https://aws-observability.github.io/observability-best-practices/patterns/ampxa) to learn about the IAM roles configuration and overall setup.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.amp.Scraper("example", {
///     source: {
///         eks: {
///             clusterArn: exampleAwsEksCluster.arn,
///             subnetIds: exampleAwsEksCluster.vpcConfig[0].subnetIds,
///         },
///     },
///     destination: {
///         amp: {
///             workspaceArn: "<target_account_workspace_arn>",
///         },
///     },
///     roleConfiguration: {
///         sourceRoleArn: source.arn,
///         targetRoleArn: "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///     },
///     scrapeConfiguration: "...",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.amp.Scraper("example",
///     source={
///         "eks": {
///             "cluster_arn": example_aws_eks_cluster["arn"],
///             "subnet_ids": example_aws_eks_cluster["vpcConfig"][0]["subnetIds"],
///         },
///     },
///     destination={
///         "amp": {
///             "workspace_arn": "<target_account_workspace_arn>",
///         },
///     },
///     role_configuration={
///         "source_role_arn": source["arn"],
///         "target_role_arn": "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///     },
///     scrape_configuration="...")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Amp.Scraper("example", new()
///     {
///         Source = new Aws.Amp.Inputs.ScraperSourceArgs
///         {
///             Eks = new Aws.Amp.Inputs.ScraperSourceEksArgs
///             {
///                 ClusterArn = exampleAwsEksCluster.Arn,
///                 SubnetIds = exampleAwsEksCluster.VpcConfig[0].SubnetIds,
///             },
///         },
///         Destination = new Aws.Amp.Inputs.ScraperDestinationArgs
///         {
///             Amp = new Aws.Amp.Inputs.ScraperDestinationAmpArgs
///             {
///                 WorkspaceArn = "<target_account_workspace_arn>",
///             },
///         },
///         RoleConfiguration = new Aws.Amp.Inputs.ScraperRoleConfigurationArgs
///         {
///             SourceRoleArn = source.Arn,
///             TargetRoleArn = "arn:aws:iam::ACCOUNT-ID:role/target-role-name",
///         },
///         ScrapeConfiguration = "...",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/amp"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := amp.NewScraper(ctx, "example", &amp.ScraperArgs{
/// 			Source: &amp.ScraperSourceArgs{
/// 				Eks: &amp.ScraperSourceEksArgs{
/// 					ClusterArn: pulumi.Any(exampleAwsEksCluster.Arn),
/// 					SubnetIds:  pulumi.Any(exampleAwsEksCluster.VpcConfig[0].SubnetIds),
/// 				},
/// 			},
/// 			Destination: &amp.ScraperDestinationArgs{
/// 				Amp: &amp.ScraperDestinationAmpArgs{
/// 					WorkspaceArn: pulumi.String("<target_account_workspace_arn>"),
/// 				},
/// 			},
/// 			RoleConfiguration: &amp.ScraperRoleConfigurationArgs{
/// 				SourceRoleArn: pulumi.Any(source.Arn),
/// 				TargetRoleArn: pulumi.String("arn:aws:iam::ACCOUNT-ID:role/target-role-name"),
/// 			},
/// 			ScrapeConfiguration: pulumi.String("..."),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.amp.Scraper;
/// import com.pulumi.aws.amp.ScraperArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceArgs;
/// import com.pulumi.aws.amp.inputs.ScraperSourceEksArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationArgs;
/// import com.pulumi.aws.amp.inputs.ScraperDestinationAmpArgs;
/// import com.pulumi.aws.amp.inputs.ScraperRoleConfigurationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
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
///         var example = new Scraper("example", ScraperArgs.builder()
///             .source(ScraperSourceArgs.builder()
///                 .eks(ScraperSourceEksArgs.builder()
///                     .clusterArn(exampleAwsEksCluster.arn())
///                     .subnetIds(exampleAwsEksCluster.vpcConfig()[0].subnetIds())
///                     .build())
///                 .build())
///             .destination(ScraperDestinationArgs.builder()
///                 .amp(ScraperDestinationAmpArgs.builder()
///                     .workspaceArn("<target_account_workspace_arn>")
///                     .build())
///                 .build())
///             .roleConfiguration(ScraperRoleConfigurationArgs.builder()
///                 .sourceRoleArn(source.arn())
///                 .targetRoleArn("arn:aws:iam::ACCOUNT-ID:role/target-role-name")
///                 .build())
///             .scrapeConfiguration("...")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:amp:Scraper
///     properties:
///       source:
///         eks:
///           clusterArn: ${exampleAwsEksCluster.arn}
///           subnetIds: ${exampleAwsEksCluster.vpcConfig[0].subnetIds}
///       destination:
///         amp:
///           workspaceArn: <target_account_workspace_arn>
///       roleConfiguration:
///         sourceRoleArn: ${source.arn}
///         targetRoleArn: arn:aws:iam::ACCOUNT-ID:role/target-role-name
///       scrapeConfiguration: '...'
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import the Managed Scraper using its identifier.
/// For example:
///
/// ```sh
/// $ pulumi import aws:amp/scraper:Scraper example s-0123abc-0000-0123-a000-000000000000
/// ```
class Scraper extends pulumi.CustomResource {
  /// a name to associate with the managed scraper. This is for your use, and does not need to be unique.
  late final pulumi.Output<String?> alias;

  /// The Amazon Resource Name (ARN) of the new scraper.
  late final pulumi.Output<String> arn;

  /// Configuration block for the managed scraper to send metrics to. See `destination`.
  late final pulumi.Output<ScraperDestination> destination;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of the IAM role that provides permissions for the scraper to discover, collect, and produce metrics
  late final pulumi.Output<String> roleArn;

  /// Configuration block to enable writing to an Amazon Managed Service for Prometheus workspace in a different account. See `role_configuration` below.
  late final pulumi.Output<ScraperRoleConfiguration?> roleConfiguration;

  /// The configuration file to use in the new scraper. For more information, see [Scraper configuration](https://docs.aws.amazon.com/prometheus/latest/userguide/AMP-collector-how-to.html#AMP-collector-configuration).
  late final pulumi.Output<String> scrapeConfiguration;

  /// Configuration block to specify where the managed scraper will collect metrics from. See `source`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<ScraperSource?> source;
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<ScraperTimeouts?> timeouts;

  /// Creates a new [Scraper].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Scraper]. {@macro pulumi_amp_scraper_scraper_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Scraper(
    String name, {
    ScraperArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:amp/scraper:Scraper',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.alias = registerOutput<String?>('alias');
    this.arn = registerOutput<String>('arn');
    this.destination = registerOutput<ScraperDestination>('destination');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.roleConfiguration =
        registerOutput<ScraperRoleConfiguration?>('roleConfiguration');
    this.scrapeConfiguration = registerOutput<String>('scrapeConfiguration');
    this.source = registerOutput<ScraperSource?>('source');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.timeouts = registerOutput<ScraperTimeouts?>('timeouts');
  }
}
